use ecommerce_db;
-- Windows Functions
-- all aggregate function are window function but use with over 
-- partition by is used instead of group by
-- rownumber(it gives index from 1),
-- rank(it skip index of  repeating value ),
-- denserank(it does skip any value ), 
-- Ntile(divide whole data into specific group ), 
-- Lag(will carry last value)
-- Lead()it carry next column value
-- First Value ()

create database kanak;
use kanak;
create Table sales(
sale_id INT primary key ,
employee varchar(50),
region varchar(20),
sale_amount INT,
sale_date date
);

insert into sales values
(1,"John","North",500,"2024-01-01"),
(2,"John","North",800,"2024-01-05"),
(3,"John","North",300,"2024-01-10"),
(4,"Emma","South",700,"2024-01-03"),
(5,"Emma","South",400,"2024-01-06"),
(6,"Emma","South",600,"2024-01-12"),
(7,"Mike","East",900,"2024-01-04"),
(8,"Mike","East",200,"2024-01-08"),
(9,"Mike","East",300,"2024-01-14")


