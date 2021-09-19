package main

import (
	"bytes"
	"context"
	"log"
	"os"
	"fmt"
	"io/ioutil"
	"encoding/json"
	"net/http"
	"github.com/cockroachdb/cockroach-go/v2/crdb/crdbpgx"
	"github.com/jackc/pgx/v4"
)

type studentData struct {
	StudentNum int	`json:"student_num"`
    LastName string	`json:"last_name"`
    FirstName string	`json:"first_name"`
    Buildings string	`json:"buildings"`
    CIDate string	`json:"cidate"`
    Approved bool 	`json:"approved"`
    COM bool 	`json:"complete"`
}

func insertRows(ctx context.Context, tx pgx.Tx, acct int, data string) error {
	// Insert four rows into the "accounts" table.
	log.Println("Creating new row...")

	//parse data first here
	stu := studentData{}	
	json.Unmarshal([]byte(data), &stu)

	if _, err := tx.Exec(ctx,
		"INSERT INTO students (StudentNum, LastName, FirstName, Buildings, CIDate, Approved, COM) VALUES ($1, $2, $3, $4, $5, $6, $7)", acct, stu.LastName, stu.FirstName, stu.Buildings, stu.CIDate, stu.Approved, stu.COM); err != nil {
		return err
	}
	return nil
}

func getUsrData(conn *pgx.Conn, StudentNum int) error {
	rows, err := conn.Query(context.Background(), "SELECT * FROM students WHERE StudentNum = $1", StudentNum)
	if err != nil {
		log.Fatal(err)
	}
	defer rows.Close()
	for rows.Next() {
		var SN int
     	var LN string
    	var FN string
    	var Build string
    	var CIDate string
    	var Appr bool
    	var COM bool
		if err := rows.Scan(&SN, &LN, &FN, &Build, &CIDate, &Appr, &COM); err != nil {
			log.Fatal(err)
		}
		log.Printf("%d, %s, %s, %s, %s, %s, %s\n", SN, LN, FN, Build, CIDate, Appr, COM)
	}

	return nil
}

func replaceData(ctx context.Context, tx pgx.Tx, studentNum int, data string) error {
	// Read the balance.
	stu := studentData{}	
	json.Unmarshal([]byte(data), &stu)

	// Perform the transfer.
	log.Printf("Updating Data from student with ID %s ...", studentNum)
	_, err := tx.Exec(ctx, "UPDATE students SET FirstName = $1 WHERE StudentNum = $2", stu.FirstName, studentNum)
	_, err = tx.Exec(ctx, "UPDATE students SET LastName = $1 WHERE StudentNum = $2", stu.LastName, studentNum)
	_, err = tx.Exec(ctx, "UPDATE students SET Buildings = $1 WHERE StudentNum = $2", stu.Buildings, studentNum)
	_, err = tx.Exec(ctx, "UPDATE students SET CIDate = $1 WHERE StudentNum = $2", stu.CIDate, studentNum)
	_, err = tx.Exec(ctx, "UPDATE students SET Approved = $1 WHERE StudentNum = $2", stu.Approved, studentNum)
	_, err = tx.Exec(ctx, "UPDATE students SET COM = $1 WHERE StudentNum = $2", stu.COM, studentNum)

	if err != nil {
		return err
	}
	return nil
}

func deleteRow(ctx context.Context, tx pgx.Tx, StudentNum int) error {
	// Delete two rows into the "accounts" table.
	log.Printf("Deleting row with ID %d", StudentNum)
	if _, err := tx.Exec(ctx,
		"DELETE FROM student WHERE StudentNum IN ($1)", StudentNum); err != nil {
		return err
	}
	return nil
}

func main() {
	// Read in connection string
	log.Println("Connecting using connection string: ")
	connstring := os.ExpandEnv("postgresql://eddy:hYhAfRNkqgWauPMI@free-tier.gcp-us-central1.cockroachlabs.cloud:26257/defaultdb?sslmode=verify-full&sslrootcert=$HOME/.postgresql/root.crt&options=--cluster%3Dlumeny-3513")

	//send info (currently sending fake data for test)
	values := &studentData{
		StudentNum: 400263717,
		LastName: "Che",
		FirstName: "Su",
		Buildings: "etb",
		CIDate: "2021-09-18",
		Approved: true,
		COM: true}
	
	json_data, err := json.Marshal(values)

	resp, err := http.Post("https://jsonplaceholder.typicode.com/albums", "application/json", bytes.NewBuffer(json_data))

    if err != nil {
        log.Fatal(err)
    }
	
	// recieve information
	resp, err = http.Get("http://192.168.0.6:12345/ResourceNet/upload")
    if err != nil {
        log.Fatal(err)
    }
    defer resp.Body.Close()
    body, err := ioutil.ReadAll(resp.Body)
    if err != nil {
        log.Fatal(err)
    }
	fmt.Println(string(body))

	// Connect to the "bank" database
	config, err := pgx.ParseConfig(connstring)
	config.Database = "mcmaster"
	if err != nil {
		log.Fatal("error configuring the database: ", err)
	}
	conn, err := pgx.ConnectConfig(context.Background(), config)
	if err != nil {
		log.Fatal("error connecting to the database: ", err)
	}
	defer conn.Close(context.Background())

	// Insert initial row
	account := 400263717
	
	//creating temporary json message 
	data := `{"student_num": 400263717, "last_name": "Su", "first_name": "Eddy", "buildings":"jhe", "cidate": "2020-09-18", "approved": true, "complete": true}`

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
	getUsrData(conn, account)

	// Run a data value change
	data = `{"student_num": 400263717, "last_name": "Su", "first_name": "Eddy", "buildings":"ETB", "cidate": "2020-09-18", "approved": true, "complete": true}`

	log.Println("Replacing Data")
	err = crdbpgx.ExecuteTx(context.Background(), conn, pgx.TxOptions{}, func(tx pgx.Tx) error {
		return replaceData(context.Background(), tx, account, data) 
	})
	if err == nil {
		log.Println("Replacement successful.")
	} else {
		log.Fatal("error: ", err)
	}

	// Print out the balances
	log.Println("Info after replacement")
	getUsrData(conn, account)
/*
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
