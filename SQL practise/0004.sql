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
course_id varchar(100) references course);

9. Remove the foreign key constraint from the Employee table. 


*/

alter table employee
 drop  foreign key course_id ;

select * from employee;

show create table employee;








