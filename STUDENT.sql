CREATE DATABASE one;
DROP DATABASE one;

 CREATE DATABASE IF NOT EXISTS mk;
 DROP DATABASE IF EXISTS mk;
 SHOW DATABASES;
 USE sakila;
 DROP DATABASE sakila;
 CREATE DATABASE mohit;
 SHOW DATABASES;
 SHOW TABLES;
 USE mohit;
 
 CREATE TABLE students(
 name VARCHAR(50),
 rollno INT  PRIMARY KEY,
 marks INT NOT NULL DEFAULT 33);
 DROP TABLE students;
 
 INSERT INTO students(rollno,name,marks) VALUES
 (1,"MOHIT KUMAR",95),
 (2,"HARSH VARDHAN",90),
 (3,"KRISH JINDAL",45),
 (4,"ARYAN JAIN",35),
 (5,"MUDASSIR KHAN",25);
 
 SELECT * FROM students;
  SELECT * FROM students
  WHERE marks>90;
  CREATE TABLE students(
 name VARCHAR(50),
 rollno INT  PRIMARY KEY,
 marks INT NOT NULL DEFAULT 33);
 DROP TABLE students;
 
 CREATE TABLE ram(
 name VARCHAR(30),
 age INT ,
 PRIMARY KEY(name,age));
 INSERT INTO ram(name,age)
 VALUES("lala raj pat lah",98),
  ("lala raj pat ",98),
   ("lala raj ",98),
   ("lala raj at lah",98);
   
   SELECT * FROM ram;
    
 CREATE TABLE mohit_2(
 name VARCHAR(50),
 rollno INT AUTO_INCREMENT  PRIMARY KEY,
 marks INT NOT NULL DEFAULT 33);
 
 INSERT INTO mohit_2(name,marks) VALUES
 ("MOHIT_KUMAR",95),
 ("HARSH_VARDHAN",90),
 ("KRISH_JINDAL",45),
 ("ARYAN_JAIN",54),
 ("MUDASSIR_KHAN",65);
 
 SELECT * FROM mohit_2;
 
 CREATE TABLE customer (
 id INT PRIMARY KEY,
 city VARCHAR(50));
 INSERT INTO customer(id,city) VALUES
 (10,"mumbai"),
 (20,"delhi"),
 (30,"noida");
 
  SELECT * FROM customer;
 CREATE TABLE malik (
 id_malik INT PRIMARY KEY,
 name VARCHAR(50),
 FR INT,
 
 FOREIGN KEY (FR) REFERENCES customer(id)  );
 
 INSERT INTO malik(id_malik,name,FR) VALUES
 (1,"mohit",10),
 (2,"premsagar",10),
 (3,"sandeep",NULL),
 (10,"rajesh",20),
 (20,"ramkumar",30),
 (30,"ramgopal",20);
 
  SELECT * FROM malik;
  
  CREATE TABLE majdoor(
  salary INT DEFAULT 250000,
  name VARCHAR(50));
  
 INSERT INTO majdoor(name) VALUES
 ("rohit"),
 ("ranveer"),
 ("sandkup"),
 ("rajendra"),
 ("ramkumar"),
 ("ramgopal");
 
 SELECT * FROM majdoor;
 
 CREATE TABLE check_(
 name VARCHAR(50),
 age INT NOT NULL,
 city VARCHAR(50),
 CONSTRAINT age_check CHECK(age>12 AND city="noida"));
INSERT INTO check_(name ,age ,city) VALUES
("mohit ",13,"noida"),
("pulkit ",32,"noida"),
("narendra ",29,"noida"),
("sachi ",18,"noida");
 SELECT * FROM check_;
 
 CREATE TABLE check_one(
 name VARCHAR(50),
 age INT NOT NULL CHECK(age>12),
 city VARCHAR(50)
  );
INSERT INTO check_one(name ,age ,city) VALUES
("mohit ",13,"noida"),
("pulkit ",32,"noida"),
("narendra ",29,"noida"),
("sachi ",18,"noida");
 SELECT * FROM check_one;
   
   CREATE TABLE select_in_detail(
   column_1 INT AUTO_INCREMENT PRIMARY KEY,
   column_2 INT ,
   column_3 INT ,
   first_name VARCHAR(30),
    last_name VARCHAR(30),
     father_s_name VARCHAR(30));
     INSERT INTO select_in_detail(column_2,column_3,first_name,last_name,father_s_name)
     VALUES(10,252402140,"mohit","lodha","than singh"),
     (11,252402141,"omveer","singh","than singh"),
     (12,252402142,"prem","sagar","jitendra singh"),
     (13,252402143,"raja pratap","singh","prabhav singh"),
     (14,252402144,"dev","pratap","anoop singh"),
     (15,252402145,"sandeep","singh","mrs"),
   (16,252402146,"mohit_01","lodha","than singh"),
     (11,252402147,"omveer_01","singh","than singh"),
     (12,252402148,"prem_01","sagar","jitendra singh"),
     (13,252402149,"raja pratap_01","singh","prabhav singh"),
     (14,252402150,"dev_01","pratap","anoop singh"),
     (15,252402151,"sandeep_01","singh","mrs");
     SELECT column_1,column_2 FROM select_in_detail;
          SELECT column_1,first_name,last_name FROM select_in_detail;
               SELECT column_1,father_s_name FROM select_in_detail;
               -- USE OF WHERE CLAUSE-- 
                  SELECT column_1,first_name,last_name,father_s_name FROM select_in_detail
                     WHERE column_1>=5;
                    --  USE OF MULTIPLE AND OPERATORS-- 
SELECT column_1,first_name,last_name,father_s_name FROM select_in_detail
                     WHERE last_name="singh" AND column_1>=5 AND father_s_name="than singh";
                     
                  --    USE OF ARITTHMATIC OPERATOR LIKE +,-,* ETC-- 
SELECT column_1,first_name,last_name,father_s_name FROM select_in_detail
                     WHERE last_name="singh" AND column_1>=5 AND father_s_name="than singh";
   SELECT column_1,first_name,last_name,father_s_name FROM select_in_detail
                     WHERE last_name="singh"  AND column_1-2*2>=5 ;
					-- USE OF NOT OPERATOR--  
        SELECT column_1 ,column_2  ,first_name,last_name    FROM select_in_detail       
                     WHERE NOT last_name="singh";
                     -- USE OF BETWEEN OPERATOR-- 
                     
                     SELECT column_1 ,column_2  ,first_name,last_name    FROM select_in_detail       
                     WHERE column_2 BETWEEN 12 AND 20;
                     
                      -- USE OF BETWEEN OPERATOR--  
SELECT column_1 ,column_2  ,first_name,last_name    FROM select_in_detail       
	WHERE column_2 IN (10,14);
    
                  -- USE OF ALL OPERATOR-- 
                  SELECT column_1 ,column_2  ,first_name,last_name    FROM select_in_detail       
	WHERE column_2 >ALL(SELECT column_2 FROM select_in_detail WHERE column_1<=5);

                     
                      -- USE OF ANY OPERATOR--
                      SELECT column_1 ,column_2  ,first_name,last_name    FROM select_in_detail       
	WHERE column_2 >ANY(SELECT column_2 FROM select_in_detail WHERE column_1>5);

                       -- USE OF LIKE OPERATOR-- 
                       -- <1> starting with letter m-- 
SELECT first_name,last_name FROM select_in_detail WHERE first_name like 'm%';
 -- <2> ending with letter h-- 
SELECT first_name,last_name FROM select_in_detail WHERE first_name like '%m';
 -- <3> containing singh -- 
 SELECT first_name,last_name FROM select_in_detail WHERE last_name like '%singh%';
 
 -- limit clause -- 
 CREATE TABLE limit_clause(
 column_1  INT AUTO_INCREMENT PRIMARY KEY,
 column_2 INT );
 INSERT INTO limit_clause (column_2)
 VALUES
 (10),(130),(100),(565),(2434),(44),(12);
 SELECT * FROM limit_clause LIMIT 4;
 
 -- order by clause --  
  SELECT * FROM limit_clause ORDER BY column_2 DESC LIMIT 4;
  SELECT * FROM limit_clause ORDER BY column_2 ;
  
  -- aggregate function ->works on multiple values but return only one value-- 
  SELECT COUNT(column_2)FROM limit_clause;
  SELECT COUNT(column_1)FROM limit_clause;
  
   SELECT MAX(column_2)FROM limit_clause;
   SELECT MAX(column_1)FROM limit_clause;
   
    SELECT MIN(column_2)FROM limit_clause;
     SELECT MIN(column_1)FROM limit_clause;
     
     SELECT SUM(column_2)FROM limit_clause;
     SELECT SUM(column_1)FROM limit_clause;
     
      SELECT AVG(column_2)FROM limit_clause;
      SELECT AVG(column_1)FROM limit_clause;
      
      CREATE TABLE  group_by (
      city VARCHAR(30)   );
      
      INSERT INTO group_by VALUES
      ("delhi"),
       ("noida"), ("delhi"), ("noida"), ("noida"), ("new delhi"), (" new delhi"), ("delhi");
       
       SELECT * FROM group_by;
       SELECT city,COUNT(city) FROM group_by
       GROUP BY city;
        CREATE TABLE  group_by_01 (
      city VARCHAR(30) , name VARCHAR(30)   );
      -- MOST IMPORTANT-> in GROUP BY clause same column -- 
     --  must be selected in which GROUP BY clause is applied-- 
        INSERT INTO group_by_01 (name,city) VALUES
      ("rohitash","delhi"),
       ("premsagar","noida"), ("jyoti","delhi"), ("prashant","noida"), ("mahavir","noida"),
       ("chhotu","new delhi"), ("sandeep"," new delhi"), ("raja","delhi");
      
      SELECT name,COUNT(city) FROM group_by_01 GROUP BY name;
   SELECT city,COUNT(name) FROM group_by_01 GROUP BY city;
  
   CREATE TABLE  group_by_02 (
      city VARCHAR(30) , name VARCHAR(30) ,marks INT  );
   INSERT INTO group_by_02 (name,city,marks) VALUES
      ("rohitash","delhi",90),
       ("premsagar","noida",98), ("jyoti","delhi",87), ("prashant","noida",100), ("mahavir","noida",34),
       ("chhotu","new delhi",33), ("sandeep"," new delhi",78), ("raja","delhi",69);
      
   SELECT city,COUNT(name),COUNT(city),AVG(marks)  FROM group_by_02
   GROUP BY city 
  
   HAVING MAX(marks)>=90
   ORDER BY AVG(marks) ;
   -- update and delete-- 
   UPDATE group_by_02 SET city ="new delhi" WHERE name ="sandeep";
 SELECT city,COUNT(name) FROM group_by_02 GROUP BY city;
 
  -- always remember about this command-- 
 --   0 for inactive and 1 for active-- 
SET SQL_SAFE_UPDATES=0;

DELETE FROM group_by_02 WHERE marks<90;

CREATE TABLE  delete_all_data (
    city VARCHAR(30),
    name VARCHAR(30)
);

INSERT INTO  delete_all_data (name, city) VALUES
("rohitash","delhi"),
("premsagar","noida"),
("jyoti","delhi"),
("prashant","noida"),
("mahavir","noida"),
("chhotu","new delhi"),
("someone","new delhi"),
("someone2","delhi");

DELETE FROM  delete_all_data;

SELECT * FROM  delete_all_data;

CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(20));

INSERT INTO dept (id,name)
VALUES (101,"math"),(102,"science"),(103,"computer"),(104,"aerospace");
DELETE FROM dept WHERE id=102;
CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(20),
dep_id INT,
FOREIGN KEY(dep_id) REFERENCES dept(id)
);
INSERT INTO teacher (id,name,dep_id)
VALUES (101,"alice",101),(102,"barkley",102),(103,"aristotle",102),(104,"maxwell",103),(105,"maria",103);


SELECT * FROM teacher;

CREATE TABLE department(
id INT PRIMARY KEY,
name VARCHAR(20) );

INSERT INTO department (id,name)
VALUES (101,"math"),(102,"science"),(103,"computer"),(104,"aerospace");

DELETE FROM department WHERE id=102;

SELECT * FROM department;

CREATE TABLE teacher_01(
id INT PRIMARY KEY,
name VARCHAR(20),
dep_id INT,
FOREIGN KEY(dep_id) REFERENCES dept(id)
ON DELETE CASCADE
ON UPDATE CASCADE
);

INSERT INTO teacher_01 (id,name,dep_id)
VALUES (101,"alice",101),(102,"barkley",102),(103,"aristotle",102),(104,"maxwell",103),(105,"maria",103);


SELECT * FROM teacher_01;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
    ON UPDATE CASCADE
);

INSERT INTO departments (department_id, department_name) 
VALUES (1, 'HR'), (2, 'IT');

SELECT *FROM departments;


INSERT INTO employees (employee_id, employee_name, department_id) 
VALUES (101, 'Alice', 1), (102, 'Bob', 2);
SELECT *FROM employees;

SET SQL_SAFE_UPDATES=0;
UPDATE departments SET department_id = 3 WHERE department_name = 'HR';

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT  PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE 
    ON UPDATE CASCADE
);

INSERT INTO orders (order_id, order_date,customer_id) 
VALUES (402,'1919-12-23',252402142),
(403,'1919-12-24',252402170),
(404,'1919-12-25',252402140),
(405,'1919-12-26',252402139),
(406,'1919-12-27',252402140);

SELECT * FROM orders;

DROP TABLE orders;
DELETE FROM orders;

INSERT INTO customers (customer_id, customer_name) 
VALUES (252402140, 'mohit'),
(252402141, 'mudassir'),
(252402139, 'mohit hudaa'),
(252402170, 'vinay sharma'),
(252402142, 'manjulika');
DELETE FROM customers;
DELETE FROM customers WHERE customer_id=252402140;
SELECT * FROM customers;
CREATE TABLE new_table(
name VARCHAR(20),
column_0 INT );
INSERT INTO new_table(name,column_0)
VALUES
("mohit",40),("dinesh",42),("akshay",43),
("rajpal",44),("rajamohan",45),
("raykuamar",46),("shiva",47);
-- to add a new column-- 
ALTER TABLE new_table
ADD COLUMN column_1 INT NOT NULL;
SELECT * FROM new_table;
INSERT INTO new_table(column_1)
VALUES
(40),(242),(043),
(544),(945),
(946),(247);
SELECT * FROM new_table;
-- to delete column-- 
ALTER TABLE new_table
DROP COLUMN column_1;
-- to change the name of the table-- 

ALTER TABLE new_table
RENAME TO old_table;

SELECT * FROM old_table;
-- now on table name will be new table-- 
ALTER TABLE  old_table
ADD COLUMN column_1 INT NOT NULL;
-- TO DO MULTIPLE UPDATE AT SAME TIME INTO NEWLY FORMED COLUMN-- 
 UPDATE old_table SET column_1 =CASE column_0
 WHEN 40 THEN 100
 WHEN 42 THEN 102
 WHEN 43 THEN 120
WHEN 44 THEN 170
WHEN 47 THEN 130
WHEN 46 THEN 102
WHEN 45 THEN 100
WHEN null THEN 200
ELSE column_1
END
WHERE column_0 IN(40,41,42,43,44,45,46,47,NULL);
SET SQL_SAFE_UPDATES=0;

-- TO CHANGE THE NAME OF A COLUMN-- 
ALTER TABLE old_table
CHANGE COLUMN column_1 column_3 INT NOT NULL;

SELECT * FROM old_table;

-- to modify datatpe or add new constraint in the column-- 
ALTER TABLE old_table
MODIFY COLUMN  column_3 BIGINT NOT NULL;
SELECT * FROM old_table;

-- <1.>.INNER JOIN-- 
CREATE TABLE lad (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    grade VARCHAR(2)
);
INSERT INTO lad (student_id, name, grade) VALUES
(1, 'Amit', 'A'),
(2, 'Riya', 'B'),
(3, 'John', 'C'),
(4, 'Sara', 'A'),
(5, 'Karan', 'B');
CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_name VARCHAR(50)
);
INSERT INTO enrollments (enrollment_id, student_id, course_name) VALUES
(101, 1, 'Mathematics'),
(102, 2, 'Physics'),
(103, 3, 'Chemistry'),
(104, 6, 'Biology'),
(105, 7, 'Computer Science');

SELECT * FROM lad as l
INNER JOIN enrollments as e
ON l.student_id=e.student_id;


-- <2.>.LEFT JOIN-- 
SELECT * FROM lad as l
LEFT JOIN enrollments as e
ON l.student_id=e.student_id;
-- <3.>.RIGHT JOIN-- 
SELECT * FROM lad as l
RIGHT JOIN enrollments as e
ON l.student_id =e.student_id;
-- <.4>.RIGHT JOIN union LEFT JOIN =full join-- 
SELECT * FROM lad as l
LEFT JOIN enrollments as e
ON l.student_id=e.student_id
UNION
SELECT * FROM lad as l
RIGHT JOIN enrollments as e
ON l.student_id =e.student_id;
-- <5.>.exclusive RIGHT JOIN-- 

SELECT * FROM lad as l
RIGHT JOIN enrollments as e
ON l.student_id =e.student_id
WHERE l.student_id IS NULL ;

-- <5.>.exclusive RIGHT JOIN-- 
SELECT * FROM lad as l
LEFT JOIN enrollments as e
ON l.student_id =e.student_id
WHERE e.student_id IS NULL ;
-- <6.>SELF JOIN-- 
CREATE TABLE manager(
name VARCHAR(50),
id INT ,
manager_id INT);
INSERT INTO manager(name,id,manager_id) VALUES
("casey",103,null),
("donald",104,103),
("bob",101,103),
("adam",102,104);
SELECT * FROM manager as m
JOIN manager as n
ON m.id=n.manager_id;
CREATE TABLE table1 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);
INSERT INTO table1 (id, name, city) VALUES
(1, 'Aman', 'Delhi'),
(2, 'Priya', 'Mumbai'),
(3, 'Rohit', 'Jaipur'),
(4, 'Neha', 'Chennai');
CREATE TABLE table2 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);
INSERT INTO table2 (id, name, city) VALUES
(3, 'Rohit', 'Jaipur'),
(4, 'Neha', 'Chennai'),
(5, 'Vikas', 'Pune'),
(6, 'Simran', 'Kolkata');
SELECT * FROM table1
UNION  
SELECT * FROM table2;
CREATE TABLE table3 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    roll INT,
    marks INT
);
INSERT INTO table3 (id, name, roll, marks) VALUES
(1, 'Aman', 101, 85),
(2, 'Priya', 102, 92),
(3, 'Rohit', 103, 76),
(4, 'Neha', 104, 88),
(5, 'Vikas', 105, 65),
(6, 'Simran', 106, 90),
(7, 'Karan', 107, 55),
(8, 'Anjali', 108, 70),
(9, 'Suresh', 109, 45),
(10, 'Pooja', 110, 99);
-- subquery=query inside query-- 
SELECT name FROM table3 
WHERE id IN (SELECT id FROM table3 WHERE id%2=0);
SELECT name,roll,marks FROM table3 
WHERE marks>(SELECT AVG(marks) FROM table3);
SELECT name FROM (SELECT name,roll FROM table3 WHERE name LIKE'a%')  table3;

-- creating a view which is a virtual table-- 
CREATE VIEW view1 as 
SELECT
name ,roll,marks FROM table3;
SELECT * FROM view1;
DROP VIEW view1;