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

-- AND / OR clauses 
select * from employees where department= "IT" having salary>70000; 
select * from employees where department="IT" OR Department="finance";
select * from employees where city = "Delhi" and age>30;
select * from employees where salary<50000 or age<28;
select * from employees where department="IT" and city ="Delhi" and salary>50000;

-- Order by 
select * from employees order by salary asc;
select * from employees order by salary desc;
select * from employees order by age; 
select * from employees order by department , salary desc;

update employees
set department = "HR"
where emp_id = 5;
select * from employees;

-- Group By
select count(emp_id),department name from employees group by department; 
select department , avg(salary) from employees group by department;
select city, count(emp_id) from employees group by city;
select department ,max(salary) from employees group by department;
select city , min(salary) from employees group by city;

-- Having Clause 
select department from employees group by department having avg(salary)>60000;
select city from employees group by city having count(emp_id)>1;
select department from employees group by department having max(salary)>70000;
select city from employees group by city having avg(age)>30;
select sum(salary), department from employees group by department having sum(salary)>100000;
select * from employees;

-- Limit Clause 
select * from employees order by salary desc limit 3 ; 
select * from employees limit 2;
select * from employees order by salary desc limit 1;
select * from employees where department =  "HR" limit 2;
select * from employees order by salary asc limit 3;

-- OffSet Clause  
select * from employees order by salary desc limit 1 offset 1;
select * from employees limit 2 offset 2;
select * from employees order by salary desc limit 2 offset 2;
select * from employees where department = "IT" limit 1 offset 1;
select * from employees order by age asc limit 3 offset 1;

-- Real Interview Type 
select department, avg(salary) from employees group by department having avg(salary)>50000 order by avg(salary) desc; 
select department , count(emp_id) from employees where city = "Delhi" group by department;
select * from employees where department in ("HR","IT") order by salary desc;
(SELECT * FROM employees
 WHERE department = 'IT'
 ORDER BY salary DESC
 LIMIT 1)
UNION ALL
(SELECT * FROM employees
 WHERE department = 'HR'
 ORDER BY salary DESC
 LIMIT 1);
 
select city,count(emp_id) from employees group by city having count(emp_id)>1;
(select *  from employees order by salary desc limit 2)
union all
(select * from employees  where emp_id=2);
-- another ans  
select department,max(salary) from employees group by department;




