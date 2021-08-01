CREATE TABLE students (name VARCHAR(64), address VARCHAR(64), student_id INT)
  PARTITIONED BY (student_id);

INSERT INTO students VALUES
    ('Amy Smith', '123 Park Ave, San Jose', 111111);

SELECT * FROM students;

INSERT INTO students VALUES
    ('Bob Brown', '456 Taylor St, Cupertino', 222222),
    ('Cathy Johnson', '789 Race Ave, Palo Alto', 333333);

SELECT * FROM students;


SELECT * FROM persons;


INSERT INTO students PARTITION (student_id = 444444)
    SELECT name, address FROM persons WHERE name = "Dora Williams";

SELECT * FROM students;


SELECT * FROM visiting_students;


INSERT INTO students TABLE visiting_students;

SELECT * FROM students;


INSERT INTO students
     FROM applicants SELECT name, address, id applicants WHERE qualified = true;

SELECT * FROM students;


INSERT OVERWRITE students VALUES
    ('Ashua Hill', '456 Erica Ct, Cupertino', 111111),
    ('Brian Reed', '723 Kern Ave, Palo Alto', 222222);
	
	
INSERT OVERWRITE students PARTITION (student_id = 222222)
    SELECT name, address FROM persons WHERE name = "Dora Williams";