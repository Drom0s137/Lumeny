SET sql_safe_updates = FALSE;

USE defaultdb;
DROP DATABASE IF EXISTS uni CASCADE;
CREATE DATABASE IF NOT EXISTS uni;

USE uni;

CREATE TABLE students (
    Lumenyid UUID PRIMARY KEY,
    LastName STRING,
    FirstName STRING,
    StudentNum INT8,
    Buildings STRING,
    CIDate STRING,
    Approved BOOL,
    COM BOOL
);