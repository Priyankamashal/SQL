-- 1 create student table for columns id , first name, second name, cgpa , jioned date, major subject
-- 2 create a program table for columns  srid , program name, program start date.
-- 3 create scholarship table for columns srid, scholarship amt, scholarship date. 

USE SKYLLX;
-- 1
CREATE TABLE STUDENT(ID INT PRIMARY KEY NOT NULL, FIRST_NAME CHAR(10), SECOND_NAME CHAR(10), CGPA FLOAT, JOINED_DATE DATETIME, MAJOR_SUBJECT CHAR(20));
DESC STUDENT; 
 
-- 2
CREATE TABLE PROGRAM(SID INT,PROGRAM_NAME CHAR(10), PROGRAM_START_DATE DATETIME);
DESC PROGRAM;
-- 3
CREATE TABLE SCHOLARSHIP(SID INT, SCHOLARSHIP_AMT INT, SCHOLARSHIP_DATE DATETIME);
DESC SCHOLARSHIP;

-- 1 INSERT 10 DETAILS IN STUDENT TABLE AND PROGRAM TABLE AND 5 ROWS IN SCHOLARSHIP TABLE.
-- 2 WRITE SQL QUERY TO FETCH FIRST NAME FROM THE STUDENT TABLE IN UPPER CASE AND USE ALIAS NAME AS STUDENT NAME. 
-- 3 WRITE SQL QUERY TO FETCH UNIQUE VALUES OF MAJOR SUBJECTS FROM STUDENT TABLE. 
-- 4 WRITE SQL QUERY TO PRINT FIRST THREE CHARACTERS OF FIRST NAME . 
-- 5  WRITE SQL QUERY TO FIND THE POSITION OF ALPABET A IN THE FIRST NAME CLOUMN OF FIRST ROW FROM STUDENT TABLE. 
-- 6 WRITE SQL QUERY THAT FECTHS THE UNIQUE VALUES OF MAJOR SUBJECTS FROM STUDENT TABLE AND PRINT ITS LENTH. 
-- 7 WRITE SQL QUERY TO PRINT FIRST NAME FROM THE STUDENT TABLE AFTER REPLACING 'a' WITH 'A'. 
-- 8 WRITE SQL QUERY TO PRINT THE FIRST NAME AND LAST NAME FROM STUDENT TABLE INTO SINGLE COLUMN NAME SHOULD BE COMPLETE NAME. 
-- 9 WRITE SQL QUERY TO PRINT ALL STUDENT DETAILS FROM STUDENT TABLE ORDER BY FIRST NAME ACENDING AND MAJOR SUBJECT DISCENDING. 
-- 10 WRITE SQL QUERY TO PRINT DETAILS OF THE STUDENT WHO'S FIRST NAME START WITH --- AND ---

-- 1
INSERT INTO STUDENT(ID,FIRST_NAME,SECOND_NAME,CGPA,JOINED_DATE,MAJOR_SUBJECT) VALUES(1,'PRIYANKA','MASHAL',89.9,'2021-11-03 02:00:35','PYTHON'); 
INSERT INTO STUDENT(ID,FIRST_NAME,SECOND_NAME,CGPA,JOINED_DATE,MAJOR_SUBJECT) VALUES(2,'MANOJ','MASHAL',90.0,'2022-12-04 03:00:45','JAVA'); 
INSERT INTO STUDENT(ID,FIRST_NAME,SECOND_NAME,CGPA,JOINED_DATE,MAJOR_SUBJECT) VALUES(3,'ROHIT','HUNASHYAL',80.0,'2019-10-04 04:00:25','SQL');
INSERT INTO STUDENT(ID,FIRST_NAME,SECOND_NAME,CGPA,JOINED_DATE,MAJOR_SUBJECT) VALUES(4,'SAGAR','HUNASHYAL',70.80,'2018-05-04 05:00:35','C');
INSERT INTO STUDENT(ID,FIRST_NAME,SECOND_NAME,CGPA,JOINED_DATE,MAJOR_SUBJECT) VALUES(5,'SNEHA','HUNASHYAL',88.80,'2019-06-06 01:00:45','C++');
INSERT INTO STUDENT(ID,FIRST_NAME,SECOND_NAME,CGPA,JOINED_DATE,MAJOR_SUBJECT) VALUES(6,'KUSUMA','HUNASHYAL',98.0,'2022-04-03 02:00:15','C#');
INSERT INTO STUDENT(ID,FIRST_NAME,SECOND_NAME,CGPA,JOINED_DATE,MAJOR_SUBJECT) VALUES(7,'PRAKASH','HUNASHYAL',88.23,'2022-07-04 03:00:25','R');
INSERT INTO STUDENT(ID,FIRST_NAME,SECOND_NAME,CGPA,JOINED_DATE,MAJOR_SUBJECT) VALUES(8,'PRADEEP','HUNASHYAL',90.0,'2022-05-05 02:00:35','JAVA');
INSERT INTO STUDENT(ID,FIRST_NAME,SECOND_NAME,CGPA,JOINED_DATE,MAJOR_SUBJECT) VALUES(9,'PRAVEEN','HUNASHYAL',90.0,'2022-02-12 02:00:26','C');
INSERT INTO STUDENT(ID,FIRST_NAME,SECOND_NAME,CGPA,JOINED_DATE,MAJOR_SUBJECT) VALUES(10,'VIJAY','HUNASHYAL',90.0,'2022-05-15 06:00:35','C++');

SELECT * FROM STUDENT; 

INSERT INTO PROGRAM(SID ,PROGRAM_NAME,PROGRAM_START_DATE) VALUES(1,'C','2021-11-09 10:00:00');
INSERT INTO PROGRAM(SID ,PROGRAM_NAME,PROGRAM_START_DATE) VALUES(2,'C++','2021-12-11 11:00:00'); 
INSERT INTO PROGRAM(SID ,PROGRAM_NAME,PROGRAM_START_DATE) VALUES(3,'C#','2021-01-10 12:00:00');
INSERT INTO PROGRAM(SID ,PROGRAM_NAME,PROGRAM_START_DATE) VALUES(4,'JAVA','2021-10-07 01:00:00');
INSERT INTO PROGRAM(SID ,PROGRAM_NAME,PROGRAM_START_DATE) VALUES(5,'PYTHON','2021-02-08 02:00:00');

SELECT * FROM PROGRAM; 

INSERT INTO SCHOLARSHIP(SID,SCHOLARSHIP_AMT,SCHOLARSHIP_DATE) VALUES(1,1000,'2022-12-09 12:00:00');
INSERT INTO SCHOLARSHIP(SID,SCHOLARSHIP_AMT,SCHOLARSHIP_DATE) VALUES(2,2000,'2022-11-09 01:00:00');
INSERT INTO SCHOLARSHIP(SID,SCHOLARSHIP_AMT,SCHOLARSHIP_DATE) VALUES(3,1000,'2022-12-09 12:00:00');
INSERT INTO SCHOLARSHIP(SID,SCHOLARSHIP_AMT,SCHOLARSHIP_DATE) VALUES(4,3000,'2022-10-10 11:00:50');
INSERT INTO SCHOLARSHIP(SID,SCHOLARSHIP_AMT,SCHOLARSHIP_DATE) VALUES(5,1000,'2022-12-09 12:00:00');

SELECT * FROM SCHOLARSHIP;

-- 2
SELECT UPPER(FIRST_NAME) AS STUDENT_NAME FROM STUDENT;

-- 3
SELECT DISTINCT MAJOR_SUBJECT FROM STUDENT;

-- 4
SELECT SUBSTRING(FIRST_NAME,1,3) FROM STUDENT;

-- 5
SELECT LOCATE('A', FIRST_NAME) AS POSITION FROM STUDENT WHERE FIRST_NAME ='PRIYANKA';

-- 6
SELECT DISTINCT MAJOR_SUBJECT , LENGTH(MAJOR_SUBJECT) FROM STUDENT; 

-- 7
SELECT REPLACE(FIRST_NAME,'A','a') FROM STUDENT; 

-- 8
SELECT CONCAT(FIRST_NAME,SECOND_NAME) AS COMPLETE_NAME FROM STUDENT ; 

-- 9
SELECT * FROM STUDENT ORDER BY FIRST_NAME ASC, MAJOR_SUBJECT DESC; 

-- 10
SELECT * FROM STUDENT WHERE FIRST_NAME LIKE 'P%A';


-- 11 write sql query to print the details of the student with the first name as priyanka and manoj. 
-- 12 sql query to print the details of student exculding first name as tammanna and rashmika. 
-- 13 sql query to print the details of the student whoes first name a. 
-- 14 sql query to print the details of the student whoes first name ends with a and contains with 4 alphabets. 
-- 15 sql query to print the details of the student whoes cgpa between 7 and 9. 
-- 16 query to fetch the count of student whoes major subject is c. 
-- 17 write an sql query to fetch the stddents full name whose cgpa is <= 8.5 and >=9.5 
-- 18 sql query to fetch the number of students for each major subject in the decending order 
-- 19 display the details of the student who has recived scholarship including name , amt,date
-- 20 write an sql query to show only odd rows from the  student table
-- 21 write an sql query to show only even rows from the student talble
-- 22 list all the student and their scholarship amt if they have recived  any. if a student has not scholarship then diaplay null for the scholaship details
-- 23  write sql query to show the top 5 recods of student table which is ordered by decending cgpa 
-- 24 write an sql query to determain the 5th cgpa from the table 
-- 25 write an sql query to fetch the list of student with the same cgpa
-- 26 write an sql query to show 2nd highest cgpa from student table using subquery
-- 27 write n sql query to show 1 row twice in result from table
-- 28 write an sql query to list student id who doeSnot get scholarship 
-- 29 write an sql query to fetch the first 50% records from the table (limit(count/2))
-- 30 write an sql query to fetch the major subject that have less than 4 people in it 
 
-- 11
SELECT * FROM STUDENT WHERE FIRST_NAME IN ('PRIYANKA', 'MANOJ');

-- 12
SELECT * FROM STUDENT WHERE FIRST_NAME NOT IN ('PRIYANKA', 'MANOJ'); 

-- 13
SELECT * FROM STUDENT WHERE FIRST_NAME LIKE'%A' ;

-- 14
SELECT * FROM STUDENT WHERE FIRST_NAME LIKE '____A' ; 

-- 15
SELECT * FROM STUDENT WHERE CGPA BETWEEN 70 AND 90; 

-- 16
SELECT COUNT(*) FROM STUDENT WHERE MAJOR_SUBJECT='C'; 

-- 17
SELECT CONCAT(FIRST_NAME,SECOND_NAME) FROM STUDENT WHERE CGPA>=80 AND CGPA<=90;

-- 18
SELECT COUNT(*) FROM STUDENT ORDER BY MAJOR_SUBJECT  DESC ; 

-- 19
SELECT ID, FIRST_NAME,SCHOLARSHIP_AMT,SCHOLARSHIP_DATE FROM STUDENT LEFT JOIN SCHOLARSHIP ON STUDENT.ID = SCHOLARSHIP.SID ; 

-- 20
SELECT * FROM STUDENT WHERE ID%2!=0 ;

-- 21
SELECT * FROM STUDENT WHERE ID%2=0; 

-- 22
SELECT ID,FIRST_NAME, SCHOLARSHIP_AMT FROM STUDENT LEFT JOIN SCHOLARSHIP ON STUDENT.ID = SCHOLARSHIP.SID; 

-- 23
SELECT  * FROM STUDENT ORDER BY CGPA DESC LIMIT 5; 

-- 24
SELECT * FROM  STUDENT WHERE ID=5 ; 

-- 25
SELECT * FROM STUDENT WHERE CGPA=90  ; 

-- 26
SELECT MAX(CGPA) FROM STUDENT  WHERE CGPA < (SELECT MAX(CGPA) FROM STUDENT) ; 

-- 27
SELECT REPEAT(FIRST_NAME,2)FROM STUDENT; 

-- 28
SELECT * FROM student WHERE sid NOT IN(SELECT sid FROM scholarship);


-- 29
SELECT * FROM STUDENT  LIMIT  (COUNT/2);


-- 30
SELECT * FROM STUDENT WHERE MAJOR_SUBJECT <(SELECT(ID,4) FROM STUDENT) ; 

-- 21 write an sql query to all major subject along with the number of people in it
-- 22 write sql query to show the last record from table
-- 23 QUERY to fetch first row of student table
-- 24  QUERY to fetch last 5 recoreds from table
-- 25 QUERY TO FETCH 3 MAXIMUM CGPA FROM TABLE
-- 26 QUERY TO FETCH 3 MINIMUM CGPA FROM TABLE
-- 27 QUERY TO FETCH MAXIMUM AMOUNT OF SCHOLARSHIP FROM TABLE
-- 28 QUERY TO FETCH THE NAME OF STUDENTS WHO HAS HIGEST CGPA 
-- 29 QUERY TO SHOW CURRENT DATE AND TIME
-- 30 SQL QUERY TO CREATE A VIEW FOR THE STUDENT TABLE 
-- 31 QUERY TO UPDATE THE CGPA TO 7.5 FOR THE STUDENTS WHOES MAJOR SUBJECT IS C. 
-- 32 QUERY TO FIND AVERAGE OF THE CGPA FOR EACH MAJOR SUBJECT
-- 33 QUERY TO FIND THE NUMBER OFSTUDENT IN EACH MAJOE SUBJECT WHO HAVE A CGPA GREATER THAN 5.0 
-- 34 QUERY TO FIND THE STUDENT WHO HAVE THE SAME MAJOR SUBJECT
-- 35 CREATE A STORED PROCEDURE FOR FETCHING THE ALL DATA FROM STUDENT TABLE

-- 21 
SELECT MAJOR_SUBJECT, COUNT(MAJOR_SUBJECT) FROM STUDENT GROUP BY MAJOR_SUBJECT ;

-- 22
SELECT * FROM STUDENT WHERE ID=(SELECT MAX(ID) FROM STUDENT); 

-- 23
SELECT * FROM STUDENT WHERE ID=(SELECT MIN(ID) FROM STUDENT);

-- 24
SELECT * FROM (SELECT * FROM STUDENT ORDER BY ID DESC LIMIT 5) AS SUBQUERY ORDER BY ID ; 

-- 25
SELECT * FROM STUDENT ORDER BY CGPA DESC LIMIT 3; 

-- 26
SELECT * FROM STUDENT ORDER BY CGPA ASC LIMIT 3; 

-- 27
SELECT * FROM SCHOLARSHIP ORDER BY SCHOLARSHIP_AMT DESC LIMIT 1; 

-- 28
SELECT * FROM STUDENT ORDER BY CGPA DESC LIMIT 1; 

-- 29
SELECT NOW(); 

-- 30

USE SKYLLX; 
 SET SQL_SAFE_UPDATES = 0; 
-- 31
UPDATE STUDENT SET CGPA=7.5 WHERE MAJOR_SUBJECT='C'; 
SELECT * FROM STUDENT;