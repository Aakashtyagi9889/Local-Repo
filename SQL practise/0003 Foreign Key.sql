create database School;
use school;

create table student(
sid int primary key auto_increment,
sname varchar(50) not null,
sadd varchar(100)not null ,
cid int not null
);
select * from student;
insert into student value(101,'Raman' , 'Delhi' , 501);

CREATE TABLE course (
cid int primary key auto_increment,
cname varchar(100) not null , 
cfee decimal (8,2)
);

insert into course values
(502, 'Data Analytic' ,63890);

select * from course ;

select * from student
join course on student.cid = course.cid;

insert into course values
(501, 'Full Stack' ,78989);

Delete from course where cid = 501;

drop database school;
#------------------------------------------------------------------------------------
#FOREIGN KEY ==> it is use to build a relationship between two tables.
# A primary key of a table can be a foreign key in another table.

create database School;
use school;

create table student(
sid int primary key auto_increment,
sname varchar(50) not null,
sadd varchar(100)not null ,
cid int not null,
foreign key(cid) references course (cid)
);

CREATE TABLE course (
cid int primary key auto_increment,
cname varchar(100) not null , 
cfee decimal (8,2)
);


insert into student value(102,'Harsh' , 'Gzb' , 502);
select * from student;

insert into course values
(502, 'Data Analytic' ,63890);

select * from student s
join course c on s.cid = c.cid; 

# it is not working bcoz 501 id course is assign to student 
DELETE FROM course WHERE cid = 502;

# first delete student record then you are able to delete the course ==> FOREIGN KEY 
Delete from student where sid = 102;

UPDATE course SET cid  = 501 where cid = 502;
#------------------------------------------------------------------------------------
# yaha ham dekhege kaise foreign key mai data ko update karne mai dono table mai data update hoga

Drop database school;
create database School;
use school;

create table student(
sid int primary key auto_increment,
sname varchar(50) not null,
sadd varchar(100)not null ,
cid int not null,
foreign key(cid) references course (cid) ON  UPDATE CASCADE 
);

CREATE TABLE course (
cid int primary key auto_increment,
cname varchar(100) not null , 
cfee decimal (8,2)
);

insert into course values
(502, 'Data Analytic' ,63890);
insert into student value(101,'RAMAN' , 'Gzb' , 502);

select * from student s
join course c on s.cid = c.cid;

UPDATE course SET cid=507 WHERE cid = 502;

