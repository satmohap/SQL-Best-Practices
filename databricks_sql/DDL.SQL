-- Creates a database named `inventory`.
CREATE DATABASE inventory;

-- Alters the database to set properties `Edited-by` and `Edit-date`.
ALTER DATABASE inventory SET DBPROPERTIES ('Edited-by' = 'John', 'Edit-date' = '01/01/2001');

-- Verify that properties are set.
DESCRIBE DATABASE EXTENDED inventory;


ALTER TABLE table_name SET TBLPROPERTIES ('comment' = 'A table comment.')


--Creates a Delta table
CREATE TABLE student (id INT, name STRING, age INT);
--Use data from another table
CREATE TABLE student_copy AS SELECT * FROM student;
--Creates a CSV table from an external directory
CREATE TABLE student USING CSV LOCATION '/mnt/csv_files';
--Specify table comment and properties
CREATE TABLE student (id INT, name STRING, age INT)
    COMMENT 'this is a comment'
    TBLPROPERTIES ('foo'='bar');
--Specify table comment and properties with different clauses order
CREATE TABLE student (id INT, name STRING, age INT)
    TBLPROPERTIES ('foo'='bar')
    COMMENT 'this is a comment';
--Create partitioned table
CREATE TABLE student (id INT, name STRING, age INT)
    PARTITIONED BY (age);