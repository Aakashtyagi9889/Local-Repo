create database Practise;
use practise;

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    JoiningDate DATE,
    City VARCHAR(50),
    ManagerID INT
);

INSERT INTO Employee VALUES
(1, 'Amit', 'IT', 60000, '2021-01-15', 'Delhi',  NULL),
(2, 'Rahul', 'IT', 75000, '2020-03-10', 'Mumbai', 1),
(3, 'Priya', 'HR', 50000, '2022-06-20', 'Delhi',  NULL),
(4, 'Neha', 'HR', 55000, '2021-08-12', 'Pune', 3),
(5, 'Vikas', 'IT', 75000, '2019-11-25', 'Delhi', 1),
(6, 'Anjali', 'Finance', 65000, '2020-07-18', 'Mumbai', NULL),
(7, 'Rohit', 'Finance', 45000, '2023-02-05', 'Pune', 6),
(8, 'Sneha', 'IT', 80000, '2018-04-22', 'Delhi', 1),
(9, 'Karan', 'HR', 50000, '2022-09-15', 'Mumbai', 3),
(10, 'Pooja', 'Finance', 70000, '2019-12-30', 'Delhi', 6),
(11, 'Arjun', 'IT', 60000, '2021-05-14', 'Pune', 1),
(12, 'Simran', 'HR', 65000, '2020-10-10', 'Delhi', 3),
(13, 'Manish', 'Finance', 45000, '2023-06-01', 'Mumbai', 6),
(14, 'Kavita', 'IT', 90000, '2017-02-17', 'Mumbai', 1),
(15, 'Deepak', 'Finance', 65000, '2021-03-21', 'Pune', 6);


select * from employee;

-- Level 1 – Basic Window Functions
	-- Sabhi employees ki salary ke saath overall average salary show karo using AVG() OVER().    
	-- Har employee ki salary ke saath total salary show karo using SUM() OVER().
	-- Har employee ko overall row number assign karo using ROW_NUMBER().
	-- Salary ke basis par employees ko rank do using RANK().
	-- Salary ke basis par dense rank generate karo using DENSE_RANK().
	-- Har employee ki salary ke saath maximum salary show karo using MAX() OVER().
	-- Har employee ki salary ke saath minimum salary show karo using MIN() OVER(). 
select salary , Avg(Salary) Over() from employee;
select * , sum(salary) over() as Total_Salary  from employee;
select *, row_number() over(order by salary desc) as RowNumber from employee;
select *, rank() over(order by salary desc)as salaryRank from employee;
select *, dense_rank() over(order by salary desc)  from employee;
select EMPNAME, SALARY, max(salary) over() from employee;
select EMPNAME, SALARY, min(salary) over() from employee;

-- Level 2 – PARTITION BY
	-- Har department ke andar employees ko row number do.
	-- Har department ki average salary calculate karo.
	-- Har department ki total salary show karo.
	-- Har department mein highest salary wale employee ko find karo.
	-- Har department mein salary ke according rank generate karo.
	-- Har department mein second highest salary find karo.
	-- Har department mein lowest salary wale employee ko find karo.
	-- Har department mein kitne employees hain, show karo.
select distinct (Department) from employee;
select *, row_number() over(partition by department order by salary) from employee;
select EmpName, Department, Salary, avg(salary) over(partition by department) from employee;
select *, sum(salary) over(partition by department) from employee;

with myCte as (select *, rank() over(partition by department order by salary desc) AS rankvalue from employee)
select * from myCte where rankvalue=1;

select *, rank() over(partition by department order by salary desc) as DeptRank from employee;

with mycte as (select *,dense_rank() over (partition by department order by salary desc)as rnk from employee)
select * from mycte where rnk =2;
select *,dense_rank() over (partition by department order by salary desc)as rnk from employee;

with cte as (select *, rank() over(partition by department order by salary asc ) as rnk from employee)
select * from cte where rnk = 1 ;

select distinct department , count(empid) over (partition by department) as total_employees from employee;


-- Level 3 – Advanced Window Functions
	-- LAG() use karke har employee ki previous salary show karo (salary order ke according).
	-- LEAD() use karke next employee ki salary show karo.
	-- Current salary aur previous salary ka difference calculate karo.
	-- FIRST_VALUE() use karke har department ki highest salary show karo.
	-- LAST_VALUE() use karke har department ki lowest salary show karo.
	-- NTH_VALUE() use karke har department ki second highest salary show karo.
	-- NTILE(3) use karke employees ko 3 salary groups mein divide karo.



