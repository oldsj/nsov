rem command to run the script at SQL> @<file path>/<file name>.
rem Example sql> @hw3script.sql  this command will run the script, hw3script.sql

Spool on
Spool scriptoutput.txt
set echo on

DROP TABLE departments CASCADE CONSTRAINTS;

CREATE TABLE departments (
	dept_no			NUMBER(3) NOT NULL,
	department		VARCHAR2(30) NOT NULL,
  student_number number(4),
	CONSTRAINT department_pk PRIMARY KEY (dept_no),
	constraint ck_st_number check (student_number < 100)
	);


DROP TABLE students CASCADE CONSTRAINTS;

CREATE TABLE students (
  student_id       NUMBER(5) PRIMARY KEY,
  first_name       VARCHAR2(20) not null,
  last_name        VARCHAR2(20) not null,
  major            VARCHAR2(30),
  dept_no		   NUMBER(2)
  );


ALTER TABLE students
ADD CONSTRAINT dept_student_fk FOREIGN KEY (dept_no) REFERENCES departments (dept_no);

delete from departments cascade;
Insert into departments values( 10, 'Chemistry', null);
Insert into departments values( 20, 'Physics', null);
Insert into departments values( 30, 'Biology', null);

delete from students cascade;
Insert into students values( 100, 'John','Smith','Chemistry', 10);
Insert into students values( 101, 'Larry', 'Brown', 'Biology', 30);
Insert into students values( 102, 'Scott','Johnson','Physics', 20);
Insert into students values( 103, 'Jane','Woods','Chemistry', 10);
commit;



	set echo off
	spool off
