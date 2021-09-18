package main

import (
	"bufio"
	"context"
	"log"
	"os"
	"crypto/rand"
	"github.com/cockroachdb/cockroach-go/v2/crdb/crdbpgx"
	"github.com/google/uuid"
	"github.com/jackc/pgx/v4"
)

var table = [...]byte{'1', '2', '3', '4', '5', '6', '7', '8', '9', '0'}

func insertRows(ctx context.Context, tx pgx.Tx, accts [4]uuid.UUID) error {
	// Insert four rows into the "accounts" table.
	log.Println("Creating new rows...")
	if _, err := tx.Exec(ctx,
		"INSERT INTO accounts (id, balance) VALUES ($1, $2), ($3, $4), ($5, $6), ($7, $8)", accts[0], 250, accts[1], 100, accts[2], 500, accts[3], 300); err != nil {
		return err
	}
	return nil
}

func getAllData(conn *pgx.Conn) error {
	rows, err := conn.Query(context.Background(), "SELECT id, balance FROM accounts")
	if err != nil {
		log.Fatal(err)
	}
	defer rows.Close()
	for rows.Next() {
		var id uuid.UUID
		var balance int
		if err := rows.Scan(&id, &balance); err != nil {
			log.Fatal(err)
		}
		log.Printf("%s: %d\n", id, balance)
	}
	return nil
}

func transferFunds(ctx context.Context, tx pgx.Tx, from uuid.UUID, to uuid.UUID, amount int) error {
	// Read the balance.
	var fromBalance int
	if err := tx.QueryRow(ctx,
		"SELECT balance FROM accounts WHERE id = $1", from).Scan(&fromBalance); err != nil {
		return err
	}

	if fromBalance < amount {
		log.Println("insufficient funds")
	}

	// Perform the transfer.
	log.Printf("Transferring funds from account with ID %s to account with ID %s...", from, to)
	if _, err := tx.Exec(ctx,
		"UPDATE accounts SET balance = balance - $1 WHERE id = $2", amount, from); err != nil {
		return err
	}
	if _, err := tx.Exec(ctx,
		"UPDATE accounts SET balance = balance + $1 WHERE id = $2", amount, to); err != nil {
		return err
	}
	return nil
}

func deleteRows(ctx context.Context, tx pgx.Tx, one uuid.UUID, two uuid.UUID) error {
	// Delete two rows into the "accounts" table.
	log.Printf("Deleting rows with IDs %s and %s...", one, two)
	if _, err := tx.Exec(ctx,
		"DELETE FROM accounts WHERE id IN ($1, $2)", one, two); err != nil {
		return err
	}
	return nil
}

func EncodeToString(max int) string {
    b := make([]byte, max)
    n, err := io.ReadAtLeast(rand.Reader, b, max)
    if n != max {
        panic(err)
    }
    for i := 0; i < len(b); i++ {
        b[i] = table[int(b[i])%len(table)]
    }
    return string(b)
}

func generateLumenyID(uniID string)string{
	log.Printf("Creating Lumeny ID")
	LumenyID := uniID + EncodeToString(10)
	return LumenyID
}

func main() {
	// Read in connection string
	scanner := bufio.NewScanner(os.Stdin)
	log.Println("Enter a connection string: ")
	scanner.Scan()
	connstring := os.ExpandEnv("postgresql://eddy:hYhAfRNkqgWauPMI@free-tier.gcp-us-central1.
	cockroachlabs.cloud:26257/defaultdb?sslmode=verify-full&sslrootcert=$HOME/.postgresql/root.
	crt&options=--cluster%3Dlumeny-3513")

	// Connect to the "bank" database
	config, err := pgx.ParseConfig(connstring)
	config.Database = "bank"
	if err != nil {
		log.Fatal("error configuring the database: ", err)
	}
	conn, err := pgx.ConnectConfig(context.Background(), config)
	if err != nil {
		log.Fatal("error connecting to the database: ", err)
	}
	defer conn.Close(context.Background())

	// Insert initial rows
	var accounts [4]uuid.UUID
	for i := 0; i < len(accounts); i++ {
		accounts[i] = uuid.New()
	}

	err = crdbpgx.ExecuteTx(context.Background(), conn, pgx.TxOptions{}, func(tx pgx.Tx) error {
		return insertRows(context.Background(), tx, accounts)
	})
	if err == nil {
		log.Println("New rows created.")
	} else {
		log.Fatal("error: ", err)
	}

	// Print out the balances
	log.Println("Initial balances:")
	getAllData(conn)

	// Run a transfer
	err = crdbpgx.ExecuteTx(context.Background(), conn, pgx.TxOptions{}, func(tx pgx.Tx) error {
		return transferFunds(context.Background(), tx, accounts[2], accounts[1], 100)
	})
	if err == nil {
		log.Println("Transfer successful.")
	} else {
		log.Fatal("error: ", err)
	}

	// Print out the balances
	log.Println("Balances after transfer:")
	getAllData(conn)

	// Delete rows
	err = crdbpgx.ExecuteTx(context.Background(), conn, pgx.TxOptions{}, func(tx pgx.Tx) error {
		return deleteRows(context.Background(), tx, accounts[0], accounts[1])
	})
	if err == nil {
		log.Println("Rows deleted.")
	} else {
		log.Fatal("error: ", err)
	}

	// Print out the balances
	log.Println("Balances after deletion:")
	getAllData(conn)
}
