package main

import (
	//"bufio"
	"context"
	"log"
	"os"
	"encoding/json"
	"github.com/cockroachdb/cockroach-go/v2/crdb/crdbpgx"
	"github.com/google/uuid"
	"github.com/jackc/pgx/v4"
)

var table = [...]byte{'1', '2', '3', '4', '5', '6', '7', '8', '9', '0'}

type studentData struct {
	Lumenyid uuid.UUID
    LastName string
    FirstName string
    StudentNum int
    Buildings string
    CIDate string
    Approved bool
    COM bool
}

func insertRows(ctx context.Context, tx pgx.Tx, acct uuid.UUID, data string) error {
	// Insert four rows into the "accounts" table.
	log.Println("Creating new row...")

	//parse data first here
	stu := studentData{}	
	json.Unmarshal([]byte(data), &stu)

	if _, err := tx.Exec(ctx,
		"INSERT INTO students (LumenyID, LastName, FirstName, StudentNum, Buildings, CIDate, Approved, COM) VALUES ($1, $2, $3, $4, $5, $6, $7, $8)", acct, stu.LastName, stu.FirstName, stu.StudentNum, stu.Buildings, stu.CIDate, stu.Approved, stu.COM); err != nil {
		return err
	}
	return nil
}

func getAllData(conn *pgx.Conn) error {
	rows, err := conn.Query(context.Background(), "SELECT LumenyID FROM students")
	if err != nil {
		log.Fatal(err)
	}
	defer rows.Close()
	for rows.Next() {
		var id uuid.UUID
		//var balance int
		if err := rows.Scan(&id); err != nil {
			log.Fatal(err)
		}
		log.Printf("%s\n", id)
	}
	return nil
}

func replaceData(ctx context.Context, tx pgx.Tx, studentID uuid.UUID, data studentData) error {
	// Read the balance.
	var fromBalance int
	if err := tx.QueryRow(ctx,
		"SELECT Approved FROM students WHERE id = $1", studentID).Scan(&fromBalance); err != nil {
		return err
	}

	// Perform the transfer.
	log.Printf("Updating Data from student with ID %s ...", studentID)
	if _, err := tx.Exec(ctx,
		"UPDATE students SET Approved = $1 WHERE LumenyID = $2", true, studentID); err != nil {
		return err
	}
	return nil
}

func deleteRow(ctx context.Context, tx pgx.Tx, Lumenyid uuid.UUID) error {
	// Delete two rows into the "accounts" table.
	log.Printf("Deleting row with ID %s", Lumenyid)
	if _, err := tx.Exec(ctx,
		"DELETE FROM student WHERE LumenyID IN ($1)", Lumenyid); err != nil {
		return err
	}
	return nil
}

func generateLumenyID()uuid.UUID{
	log.Printf("Creating Lumeny ID")
	return uuid.New()
}

func main() {
	// Read in connection string
	log.Println("Connecting using connection string: ")
	connstring := os.ExpandEnv("postgresql://eddy:hYhAfRNkqgWauPMI@free-tier.gcp-us-central1.cockroachlabs.cloud:26257/defaultdb?sslmode=verify-full&sslrootcert=$HOME/.postgresql/root.crt&options=--cluster%3Dlumeny-3513")

	// Connect to the "bank" database
	config, err := pgx.ParseConfig(connstring)
	config.Database = "uni"
	if err != nil {
		log.Fatal("error configuring the database: ", err)
	}
	conn, err := pgx.ConnectConfig(context.Background(), config)
	if err != nil {
		log.Fatal("error connecting to the database: ", err)
	}
	defer conn.Close(context.Background())

	// Insert initial row
	account := generateLumenyID()
	data := "test"

	err = crdbpgx.ExecuteTx(context.Background(), conn, pgx.TxOptions{}, func(tx pgx.Tx) error {
		return insertRows(context.Background(), tx, account, data)
	})
	if err == nil {
		log.Println("New rows created.")
	} else {
		log.Fatal("error: ", err)
	}

	// Print out the balances
	log.Println("PRINT ALL DATA")
	getAllData(conn)
/*
	// Run a transfer
	err = crdbpgx.ExecuteTx(context.Background(), conn, pgx.TxOptions{}, func(tx pgx.Tx) error {
		return replaceData(context.Background(), tx, account[2], account[1], 100)
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
		return deleteRows(context.Background(), tx, account[0], account[1])
	})
	if err == nil {
		log.Println("Rows deleted.")
	} else {
		log.Fatal("error: ", err)
	}

	// Print out the balances
	log.Println("Balances after deletion:")
	getAllData(conn)*/
}
