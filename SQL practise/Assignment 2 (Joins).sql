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
create database company_db;
use company_db;

CREATE TABLE departments (
    dept_id INT,
    dept_name VARCHAR(50),
    location VARCHAR(50)
); 

CREATE TABLE employees (     
emp_id INT,     
emp_name VARCHAR(50),     
salary DECIMAL(10,2),     
dept_id INT ); 


CREATE TABLE projects (     project_id INT,     project_name VARCHAR(100),     budget DECIMAL(12,2) ); 


CREATE TABLE employee_projects (     emp_id INT,     project_id INT,     assigned_date DATE ); 
INSERT INTO departments VALUES (1, 'HR', 'Delhi'), (2, 'IT', 'Noida'), (3, 'Finance', 'Mumbai'), (4, 'Marketing', 'Pune'); 

INSERT INTO employees VALUES (101, 'Amit', 50000, 2), (102, 'Neha', 60000, 2), (103, 'Raj', 45000, 1), (104, 'Priya', 70000, 3), (105, 'Karan', 55000, NULL), (106, 'Simran', 52000, 5);  -- Invalid department (for practice) 
INSERT INTO projects VALUES (201, 'Website Development', 200000), (202, 'Payroll System', 150000), (203, 'Mobile App', 300000), (204, 'CRM Software', 250000); 
INSERT INTO employee_projects VALUES (101, 201, '2024-01-10'), (101, 203, '2024-02-15'), (102, 201, '2024-01-20'), (103, 202, '2024-03-01'), (104, 203, '2024-02-01'), (107, 204, '2024-04-01');  -- Invalid employee (for practice) 


-- 1. Display employee name and department name. 
select emp_name , dept_name from employees e
join departments d on e.dept_id = d.dept_id  ;

-- 2. Show employees working in the IT department. 
select * from employees e
join departments d on  e.dept_id = d.dept_id where  d.dept_name = "IT";

-- 3. List employees with department location. 
select e.emp_name, d.dept_name, d.location from employees e
join departments d on e.dept_id = d.dept_id;



-- 4. Show all employees and their department names (including NULL and invalid dept_id). 

select e.dept_id , e.emp_name , d.dept_name from employees e
left join departments d on d.dept_id = e.dept_id;

-- 5. Find employees who are not assigned to any department. 
select e.emp_id ,  e.emp_name  from employees e 
left join departments d on d.dept_id = e.dept_id where e.dept_id is null;

-- 6. Find employees whose department does not exist in departments table. 
select e.emp_name ,e.dept_id from employees e
left join departments d on d.dept_id = e.dept_id where e.dept_id is not Null and d.dept_id is null ;


-- 7. Display all departments and their employees (including departments with no employees). 
select d.dept_id, d.dept_name, e.emp_name from employees e
right join departments d on e.dept_id = d.dept_id ;

-- 8. Display employee name, project name, assigned date. 
select e.emp_name , x.project_name ,  p.assigned_date from employees e
join employee_projects p on p.emp_id = e.emp_id 
join projects x on x.project_id = p.project_id;

-- 9. Show employees working on "Mobile App". 
select * from employees e
join employee_projects p on e.emp_id = p.emp_id
join projects x on x.project_id = p.project_id where x.project_name  = "Mobile App";

-- 10. Find employees assigned to non-existing departments
select * from employees e
left join departments d on d.dept_id = e.dept_id where e.dept_id is not null and d.dept_id is null;

-- 11. Find records in employee_projects where employee does not exist. 
SELECT 
    p.emp_id, p.project_id, p.assigned_date
FROM
    employees e
        RIGHT JOIN
    employee_projects p ON e.emp_id = p.emp_id
WHERE
    p.emp_id IS NOT NULL
        AND e.emp_id IS NULL;
        
-- 12. Find projects that have no employees assigned. 
SELECT p.project_id, p.project_name
FROM projects p
LEFT JOIN employee_projects ep
    ON p.project_id = ep.project_id
LEFT JOIN employees e
    ON ep.emp_id = e.emp_id
GROUP BY p.project_id, p.project_name
HAVING COUNT(e.emp_id) = 0;



select * from employees;
select * from departments;
select * from employee_projects;
select * from projects;
