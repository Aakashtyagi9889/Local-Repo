/*
Q1Ek table banao students
Columns:
student_id
name
age
city
Usme 5 records insert karo.
*/



create table students(
student_id int,
name varchar(100),
age int,
city varchar(50)
);
	
insert into students values
(1, 'Aakash' , 23 , 'Ghaziabad'),
(2, 'Harsh' , 23 , 'Ghaziabad'),
(3, 'Lavi' , 27 , 'Hapu'),
(4, 'Deepak' , 27 , 'Hapur'),
(5, 'Sandeep' , 47 , 'Delhi');

select * from students;

/*
Q2
Table me ek naya column add karo
email
Usme sabhi students ki email update karo.
*/
alter table students
add column email varchar(100)

update students
set email = 'sandeep@gmail.com'
where student_id = 5;

/*
Q3
Age ka datatype
INTEGER
se
SMALLINT
me convert karo.
*/

alter table students
alter column age type smallint;

/*
Q4
Table ka naam
students
se
college_students
*/

alter table students
rename to college_students;

/*
Q5
City column delete kar do.
*/

alter table college_students
drop column city

select * from college_students


/*
Q6
Ek table banao
employees
Columns:-
emp_id
emp_name
department
salary
joining_date

Kam se kam 8 records insert karo.
*/
create table employees(
emp_id int,
emp_name varchar(100),
department varchar(50),
salary decimal(10,2),
joining_date date 
);

insert into employees values
(2,'Vipin','Hr',100000,'2026-07-02'),
(3,'Rachit','Finance',50000,'2026-09-21'),
(4,'Harsh','It',50000,'2026-11-12'),
(5,'Vishu','Marketing',10000,'2026-01-22'),
(6,'Himanshu','Hr',25000,'2026-05-17'),
(7,'Ashish','Finance',55000,'2026-06-19'),
(8,'Sourabh','It',45000,'2026-02-19');
select * from employees;

/*
Q7
Employees table me ek naya column add karo
bonus
Datatype
NUMERIC(8,2)
*/

alter table employees
add column bonus numeric(8,2);

/*
Q8
Salary column ka datatype
INTEGER
se
NUMERIC(10,2)
kar do.
*/
alter table employees
alter column salary type numeric(10,2);

/*
Q9
Table rename karo
employees
→
company_employees
*/

alter table employees
rename to comapny_employees;

/*
Q10
Bonus column delete kar do.
*/
alter table company_employees
drop column bonus;
select * from company_employees;

/*
Q11
Ek table banao
products
Columns
product_id
product_name
price
category
10 records insert karo.
*/

create table products(
product_id INT,
product_name VARCHAR(100),
price decimal(10,2) , 
category varchar(100) 
);

insert into products(product_id ,product_name,price,category)
values(1,'IPhone13' , 56000 , 'Mobile Phone'),
(2,'Toy' , 500 , 'Plastic'),
(3,'Refrigretor' , 15000 , 'Electronics'),
(4,'Buds' , 1200 , 'Electronics'),
(5,'Bed' , 55000 , 'Wood'),
(6,'Sofa' , 13000 , 'Soft Wood'),
(7,'Laptop' , 90000 , 'Electronics'),
(8,'beg' , 1500 , 'Rubber'),
(9,'Table' , 20000 , 'Glass'),
(10,'Iron' , 56000 , 'Metal');

select * from products;

/*
Q12
Price datatype
INTEGER
se
NUMERIC(10,2)
kar do.
*/
alter table products
alter column price type numeric(10,2);

/*
Q13
Ek column add karo
stock
*/
alter table products 
add column stock int;
select * from products;

/*
Q14
Category column ka naam
product_category
kar do.
*/

alter table products
rename column category to Product_category;

/*
Q15
Pure products table ko
TRUNCATE
kar do.
Fir dobara 5 records insert karo.
*/

truncate products;
insert into products(product_id ,product_name,price,Product_category , stock)
values(1,'IPhone13' , 56000 , 'Mobile Phone' , 12),
(2,'Toy' , 500 , 'Plastic',22),
(3,'Refrigretor' , 15000 , 'Electronics',25),
(4,'Buds' , 1200 , 'Electronics',20),
(5,'Bed' , 55000 , 'Wood',21);
select * from products;
--Drop Stock Column
alter table products
drop column stock;
select * from products;
--Rename Table
alter table products
rename to Customer_products;






