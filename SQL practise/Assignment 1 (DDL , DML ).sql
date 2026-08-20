/*
1. Create a table Student with columns: 
o student_id (Primary Key) 
o name 
o age 
o email (unique)

	create table student (
	student_id int primary key,
	name varchar(50),
	age int ,
	email varchar(100) not null unique  
);

2. Create a table Course with: 
o course_id 
o course_name 
o duration 
create table Course (
course_id int , 
course_name varchar(100),
duration varchar(50)
)

3. Add a column phone_number to the Student table. 
alter table course 
add column phone_number varchar(20);

4. Change the datatype of age from INT to SMALLINT. 
alter table student
modify column age smallint;

5. Rename the table Student to Students. 
alter table student
rename students;

6. Drop the column duration from the Course table. 
alter table course 
drop column duration;

7. Add a CHECK constraint to ensure age >= 18. 
alter table student
add constraint age 
check(age>=18);

8. Create a table Employee with a foreign key referencing Course(course_id). 
create table employee(
eid int primary key,
ename varchar(100),
course_id int, 
foreign key (course_id) references course(course_id));

9. Remove the foreign key constraint from the Employee table. 
alter table employee
drop foreign key employee_ibfk_1 ;

10. Delete all rows from Employee without deleting its structure. 
truncate employee;

------------------------------------------DML Practical Questions------------------------------------

1. Insert 5 records into the Students table. 
insert into students values
(102,'Harsh' , 22 , 'b.com'),
(103,'Harish' , 33 , 'c.com'),
(104,'Lavi' , 28 , 'd.com'),
(105,'Komal' , 20 , 'e.com');

2. Insert multiple records into Course using a single query. 
insert into Course values
(102,'Data Eng.' , 2313452 ),
(103,'Fullstack' , 3321342),
(104,'Canva' , 28234521),
(105,'Front end' , 2032432);

3. Display all records from Students. 
select * from students;

4. Display only name and email from Students.
select name , email from students; 

5. Update the email of a student whose student_id = 3. 
update students
set email = "Aakash.com"
where student_id = 103;

6. Increase age of all students by 1 year. 
update students
set age = age+1;

7. Delete a student record where student_id = 5. 
delete from students
where student_id = 105;

8. Display students whose age is greater than 20.
select * from  students
where age>20;

9. Display students sorted by age in descending order. \
select * from students order by age desc;

10. Display only the first 3 records from Students. 
select * from students limit 3;
*/






describe course;
select * from students;






