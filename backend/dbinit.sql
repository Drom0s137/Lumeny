SET sql_safe_updates = FALSE;

--mcmaster
USE defaultdb;
DROP DATABASE IF EXISTS mcmaster CASCADE;
CREATE DATABASE IF NOT EXISTS mcmaster;

USE mcmaster;

CREATE TABLE students ( 
    StudentNum INT8 PRIMARY KEY,
    LastName STRING,
    FirstName STRING,   
    Buildings STRING,
    CIDate STRING,
    Approved BOOL,
    COM BOOL
);

--waterloo
USE defaultdb;
DROP DATABASE IF EXISTS waterloo CASCADE;
CREATE DATABASE IF NOT EXISTS waterloo;

USE waterloo;

CREATE TABLE students ( 
    StudentNum INT8 PRIMARY KEY,
    LastName STRING,
    FirstName STRING,   
    Buildings STRING,
    CIDate STRING,
    Approved BOOL,
    COM BOOL
);

--western
USE defaultdb;
DROP DATABASE IF EXISTS western CASCADE;
CREATE DATABASE IF NOT EXISTS western;

USE western;

CREATE TABLE students ( 
    StudentNum INT8 PRIMARY KEY,
    LastName STRING,
    FirstName STRING,   
    Buildings STRING,
    CIDate STRING,
    Approved BOOL,
    COM BOOL
);

--york
USE defaultdb;
DROP DATABASE IF EXISTS york CASCADE;
CREATE DATABASE IF NOT EXISTS york;

USE york;

CREATE TABLE students ( 
    StudentNum INT8 PRIMARY KEY,
    LastName STRING,
    FirstName STRING,   
    Buildings STRING,
    CIDate STRING,
    Approved BOOL,
    COM BOOL
);

--toronto
USE defaultdb;
DROP DATABASE IF EXISTS toronto CASCADE;
CREATE DATABASE IF NOT EXISTS toronto;

USE toronto;

CREATE TABLE students ( 
    StudentNum INT8 PRIMARY KEY,
    LastName STRING,
    FirstName STRING,   
    Buildings STRING,
    CIDate STRING,
    Approved BOOL,
    COM BOOL
);

--queens
USE defaultdb;
DROP DATABASE IF EXISTS queens CASCADE;
CREATE DATABASE IF NOT EXISTS queens;

USE queens;

CREATE TABLE students ( 
    StudentNum INT8 PRIMARY KEY,
    LastName STRING,
    FirstName STRING,   
    Buildings STRING,
    CIDate STRING,
    Approved BOOL,
    COM BOOL
);

--brock
USE defaultdb;
DROP DATABASE IF EXISTS brock CASCADE;
CREATE DATABASE IF NOT EXISTS brock;

USE brock;

CREATE TABLE students ( 
    StudentNum INT8 PRIMARY KEY,
    LastName STRING,
    FirstName STRING,   
    Buildings STRING,
    CIDate STRING,
    Approved BOOL,
    COM BOOL
);