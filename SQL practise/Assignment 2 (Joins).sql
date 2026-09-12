/*
MySQL JOIN Practice (Without Foreign Keys) 
Scenario: Company Database 
We will create 4 tables: 
• departments 
• employees 
• projects 
• employee_projects 
No foreign keys will be defined. 

# Create Database 
create database company_db;
use company_db;

#Create Tables (Without FK Constraints) Departments Table 
CREATE TABLE departments (     
dept_id INT,     
dept_name VARCHAR(50),     
location VARCHAR(50) ); 

# Employees Table 
CREATE TABLE employees (     
emp_id INT,     
emp_name VARCHAR(50),     
salary DECIMAL(10,2),     
dept_id INT ); 

# Projects Table 
CREATE TABLE projects (     
project_id INT,     
project_name VARCHAR(100),     
budget DECIMAL(12,2) ); 

# Employee_Projects Table 
CREATE TABLE 
employee_projects (     
emp_id INT,     
project_id INT,     
assigned_date DATE ); 

-----------------------------------------------------------------------------------------
Insert Sample Data Insert Departments 
INSERT INTO departments VALUES (1, 'HR', 'Delhi'), 
(2, 'IT', 'Noida'), 
(3, 'Finance', 'Mumbai'), 
(4, 'Marketing', 'Pune'); 


Insert Employees 
INSERT INTO employees VALUES (101, 'Amit', 50000, 2), 
(102, 'Neha', 60000, 2), 
(103, 'Raj', 45000, 1), 
(104, 'Priya', 70000, 3), 
(105, 'Karan', 55000, NULL), 
(106, 'Simran', 52000, 5);  -- Invalid department (for practice) 


Insert Projects 
INSERT INTO projects VALUES 
(201, 'Website Development', 200000), 
(202, 'Payroll System', 150000), 
(203, 'Mobile App', 300000), 
(204, 'CRM Software', 250000); 

Insert Employee Projects 
INSERT INTO employee_projects VALUES 
(101, 201, '2024-01-10'), 
(101, 203, '2024-02-15'), 
(102, 201, '2024-01-20'),
(104, 203, '2024-02-01'), 
(107, 204, '2024-04-01');  -- Invalid employee (for practice) 

*/


