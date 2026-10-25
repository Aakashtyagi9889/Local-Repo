create database ecommerce_db;
use ecommerce_db;

-- Customer table 
CREATE TABLE customers(
customer_id INT PRIMARY KEY ,
customer_name VARCHAR(100),
email VARCHAR(100),
city VARCHAR(50)
);

-- Product table
CREATE TABLE products(
product_id INT PRIMARY KEY ,
product_name VARCHAR(100),
price DECIMAL (10,2)
);

-- Orders (Child of Customers) 
CREATE TABLE orders (     
order_id INT PRIMARY KEY,     
order_date DATE,     
customer_id INT,    
FOREIGN KEY (customer_id)     
REFERENCES customers(customer_id) ON DELETE CASCADE 
); 


-- Order_Items (Child of Orders and Products) 
CREATE TABLE order_items ( 
   order_id INT, 
	product_id INT, 
	quantity INT, 
	PRIMARY KEY (order_id, product_id), 
    FOREIGN KEY (order_id) 
    REFERENCES orders(order_id)
    ON DELETE CASCADE, 
    FOREIGN KEY (product_id) 
    REFERENCES products(product_id) 
    );

-- 1. Insert sample data into all four tables-- 
insert into customers values(101,"Lavi","lavi.com", "Hapur");
insert into products value(204,"Toy",1200);
insert into orders value(303,"2026-08-12",103);
insert into order_items value(302,202,10);

select * from customers;
select * from products;
select * from orders;
select * from order_items;

-- 2. Try inserting an order with a customer_id that does not exist. What happens? 
insert into orders value(307,"2026-08-12",106);
-- it gives error 

-- 3. Try inserting an order_item with a product_id that does not exist. 
insert into order_item value(304,204,3);
-- gives error

-- 4. Delete a customer and observe what happens to related orders. 
delete from customers where customer_id = 101;
-- it will effect all column 

-- 5. Delete an order and check what happens to order_items. 
DELETE FROM orders 
WHERE
    order_id = 302;

-- 6. Modify the schema so that deleting a product is restricted if order_items exist. 
alter table order_items ADD CONSTRAINT  foreign key(product_id) references products(product_id);
DELETE FROM products 
WHERE
    product_id = 201;

-- 7. Add ON UPDATE CASCADE to the orders table.  

ALTER TABLE orders
DROP FOREIGN KEY orders_ibfk_1;
alter table orders add constraint  FOREIGN KEY (customer_id)  
   REFERENCES customers(customer_id)   
   ON Update CASCADE ;

SHOW CREATE TABLE orders;


CREATE DATABASE ecommerce_db;
USE ecommerce_db;

-- Customer Table
CREATE TABLE customers(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(100),
email VARCHAR(100),
city VARCHAR(50)
);

-- Product Table
CREATE TABLE products(
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
price DECIMAL(10,2)
);

-- ORDERS ( CHILD OF CUSTOMERS ) 
CREATE TABLE orders(
order_id INT PRIMARY KEY,
order_date DATE,
customer_id INT,
foreign key (customer_id)
references customers(customer_id) ON DELETE CASCADE
);

-- order_items( child of orders and products )
CREATE TABLE order_items(
order_id INT,
product_id INT,
quantity INT,
PRIMARY KEY (order_id , product_id ),
FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE,
FOREIGN KEY (product_id) REFERENCES products(product_id)
); 

insert into customers values
(101, "aakash" , "aakash@.com", "ghaziabad"),
(102, "harsh" , "harsh@.com", "noida"),
(103, "diya" , "diya@.com", "hapur"),
(104, "deepak" , "deepak@.com", "hapur");

insert into products values
(0004,"keyboard" , 999);

insert into orders values
(4,"2026-8-29",104);

insert into order_items values
(4,4,10);

select * from customers;
select * from products;
select * from orders;
select * from order_items;

-- 2. Try inserting an order with a customer_id that does not exist. What happens?  
insert into orders value(5,"2026-9-07",105);

-- 3. Try inserting an order_item with a product_id that does not exist.  ==> FAIL  
insert into order_items value(7,5,6);

-- 4. Delete a customer and observe what happens to related orders. 
select * from customers;
select * from orders;
delete from customers where customer_id=104; 

-- 5. Delete an order and check what happens to order_items.  
select * from orders;
select * from order_items;
delete from orders where order_id = 3;

--  6. Modify the schema so that deleting a product is restricted if order_items exist. 
select * from products;
select * from order_items;
delete from products where product_id = 2;

-- 7. Add ON UPDATE CASCADE to the orders table. 
show create table orders;
alter table orders 
drop constraint orders_ibfk_1;
alter table orders add constraint  FOREIGN KEY (customer_id)  
   REFERENCES customers(customer_id)   
   ON Update CASCADE ;
   
-- 8. Drop and recreate the foreign key constraint on order_items.  
select * from order_items;
show create table order_items;

alter table order_items
drop foreign  Key order_items_ibfk_2;

alter table order_items
add constraint Foreign key(order_id) references orders(order_id) ON delete CASCADE ON UPDATE CASCADE;
