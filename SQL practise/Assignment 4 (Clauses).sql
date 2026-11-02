use ecommerce_db;

create table employees (
emp_id INT,
Name varchar(50),
departement varchar(50),
salary double ,
age int,
city varchar(50)
);

-- Insert Data  
insert into employees values 
(1,"Rahul","IT",60000,28,"Delhi"),
(2,"Neha","HR",45000,32,"Mumbai"),
(3,"Amit","IT",80000,35,"Delhi"),
(4,"Priya","Finance",70000,29,"Pune"),
(5,"Karan","Hr",40000,25,"Delhi");

alter table employees rename column departement to department;

-- Where Clause 
select * from employees where department = "IT";
select * from employees where salary> 50000;
select * from employees where city  = "Delhi";
select * from employees where age < 30;
select * from employees where salary > 60000 and salary <80000;-- isme = jabhi kaam krega jab hma use krege 
select * from employees where salary between 60000 and 80000; -- isme >= kaam krega 



