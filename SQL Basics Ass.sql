   

SQL Basics    Questions


Q1. Create a New Database and  Table for Employees

Task: Create a new database named and Create a table named with the following columns:

Column Name 	Data Type 	Constraint
employee_id	INT	PRIMARY KEY 
first_name	VARCHAR(50) 	
last_name	VARCHAR(50) 	
department	VARCHAR(50) 	
salary	INT	
hire_date	DATE	


Ans No.1:

CREATE DATABASE company_db;

CREATE TABLE company_db.employees (
 		employee_id INT AUTO_INCREMENT PRIMARY KEY,
 		first_name VARCHAR (50),
 		last_name VARCHAR (50),
 		department VARCHAR (50),
 		salary INT,
 		hire_date DATE
 );

Q2. Insert Data into Employees Table 
Task: Insert the following sample records into the table.


employee_id	first_name	last_name	department	salary	hire_date
101	Amit	Sharma	HR	50000	2020-01-15 
102	Riya	Kapoor	Sales	75000	2019-03-22 
103	Raj	Mehta	IT	90000	2018-07-11 
104	Neha	Verma	IT	85000	2021-09-01 
105	Arjun	Singh	Finance	60000	2022-02-10 

Ans No.2:

CREATE TABLE employees (
 		employee_id INT AUTO_INCREMENT PRIMARY KEY,
		first_name VARCHAR (50),
 		last_name VARCHAR (50),
 		department VARCHAR (50),
 		salary INT,
 		hire_date DATE
 );
 
INSERT INTO employees (employee_id, first_name, last_name, department, salary, hire_date)  VALUES 
		('101', 'Amit', 'Sharma', 'HR', '50000','2020-01-15'),
		('102', 'Riya','Kapoor ','sales','75000','2019-03-22'),
 		('103', 'Raj','Mehta','IT','90000','2018-07-11'),
 		('104', 'Neha','Verma','IT','85000','2021-09-01'),
 		('105', 'Arjun','Singh','Finance ','60000','2022-02-10');

Q3. Display All Employee Records Sorted by Salary (Lowest to Highest) Hint: Use the clause on the salary column.

Ans No.3:

SELECT * FROM employees
ORDER BY salary ASC;

Q4. Show Employees Sorted by Department (A–Z) and Salary (High → Low).

Ans No.4:

SELECT *
FROM employees
ORDER BY department ASC, salary DESC;

Q5. List All Employees in the IT Department, Ordered by Hire Date (Newest First).

Ans No.5:

SELECT *
FROM employees
WHERE department = 'IT'
ORDER BY hire_date DESC;

Q6. Create and Populate a Sales Table
Task: Create a table to track sales data:


sale_id	customer_name	amount	sale_date
1	Aditi	1500	2024-08-01 
2	Rohan	2200	2024-08-03 
3	Aditi	3500	2024-09-05 
4	Meena	2700	2024-09-15 
5	Rohan	4500	2024-09-25

Ans No.6:

CREATE TABLE sales (
		sale_id INT AUTO_INCREMENT PRIMARY KEY,
 		customer_name VARCHAR (50),
 		amount INT,
 		sale_date DATE
 );
 
INSERT INTO sales (customer_name, amount, sale_date)
VALUES 	('Aditi', '1500','2024-08-01'),
 		('Rohan','2200','2024-08-03'),
 		('Aditi','3500','2024-09-05'),
 		('Meena','2700','2024-09-15'),
 		('Rohan','4500','2024-09-25');

Q7. Display All Sales Records Sorted by Amount (Highest → Lowest)
Hint: Use ORDER BY amount DESC.

Ans No.7:

SELECT *
FROM sales
ORDER BY amount DESC;

Q8. Show All Sales Made by Customer “Aditi”
Hint: Use WHERE customer_name = 'Aditi'.

Ans No.8:

SELECT *
FROM sales
WHERE customer_name = 'Aditi';

Q9. What is the Difference Between a Primary Key and a Foreign Key?


Ans No.9:

Primary Key uniquely identifies each record in a table, while Foreign Key establishes a relationship between two tables by referencing the Primary Key of another table.


	Primary Key	Foreign Key
	Must be unique	Can be duplicated
	Not allowed	Allowed (unless restricted)
	Identifies records uniquely	Creates relationship between tables
	Entity integrity	Referential integrity
	Defined in the same table	Defined in one table, referencing another

Q10. What Are Constraints in SQL and Why Are They Used?

Ans No.10:

SQL constraints are rules applied to one or more columns in a database table to control the type of data that can be inserted, updated, or deleted. They are used to maintain the accuracy, consistency, and reliability of data. Without constraints, a database could contain invalid or inconsistent data, which can lead to errors in applications that rely on it.

Constraints help in:

1.Ensure data integrity: Prevent invalid or inconsistent data (e.g., only unique valid emails allowed).
2.Maintain relationships: FOREIGN KEY constraints ensure linked records exist.
3.Enforce business rules: Automatically check conditions defined by business logic.
4.Avoid duplicates or missing values: PRIMARY KEY, UNIQUE, and NOT NULL prevent duplicate or null entries in important columns.


