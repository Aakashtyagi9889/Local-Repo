create database store;
use store;
/*
Product ( pid , pname , price )
Customer (cid , cname , cadd , cmob )
Orders ( oid , cid , pid , qty )
*/

create table customer(
cid int primary key auto_increment ,
cname varchar(50) not null , 
cmob varchar(20) not null,
cadd varchar(100) not null
);

insert into customer values(101, 'Raman Singh' , '+91 8828221837' , 'Noida'),
(102, 'Siya Singh' , '+91 7672461522' , 'Delhi'),
(103, 'Yogesh Kumar' , '+91 9834921462' , 'Noida'),
(104, 'Mahesh Singh' , '+91 97564215683' , 'Ghaziabad');

select * from customer;

CREATE TABLE product(
pid int primary key auto_increment ,
pname varchar(100) not null , 
price DECIMAL(10 , 2) not null
);

insert into product values
(501 , 'Keyboard' , 1980),
(502, 'Mouse' , 870),
(503, 'SSD 1TB' , 7600),
(504 , 'HDD 512GB' , 4700);

select * from product;

create table orders(
oid int primary key auto_increment ,
cid int not null , 
pid int not null,
qty int default 1
);

insert into orders (cid , pid , qty)values
(102 , 503 , 4),
(104 , 501 , 7),
(103, 506 , 3),
(107 , 502 , 8),
(108 , 508 , 5);

select * from orders;

# CROSS JOIN
select * from customer join orders;
select * from customer cross join orders;

# INNER JOIN (only common rows)
select * from customer join orders using (cid);
#Alter-nate way

