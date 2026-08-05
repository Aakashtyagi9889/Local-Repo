-- Where clause using Logical Operator (AND , OR , NOT)

-----------------------------------------------------------------------------------------------------------------------
-- 										AND Operator 

/* 
Write a query to retrive all orders from the orders table where  the category is 'Technology'
and the sales amount is greater then 500.
*/
select * from superstore_sales
where category = 'Technology' AND sales>500;
--count :  89 records
select count(*) from superstore_sales
where category = 'Technology' AND sales>500;

/* 
Write a query to retrive all orders from the orders table where  the subcategory is 'Phones'
and the Profit  is less then 0.
*/
select * from superstore_sales
where sub_category ='Phones' and Profit < 0;
--count : 15 records
select count(*) from superstore_sales
where sub_category ='Phones' and Profit < 0;


/* 
Write a query to retrive all orders from the orders table where  the Region  is 'West'
and the Category is 'furniture'
and the quantity is less then 10 .
*/
select * from superstore_sales
where region = 'West' and category = 'Furniture' and quantity < 10;
--count : 47 records
select count(*) from superstore_sales
where region = 'West' and category = 'Furniture' and quantity < 10;

-------------------------------------------------------------------------------------------------------------------
-- 										OR Operator 


/* 
Write a query to retrive all orders from the orders table where  the Region  is either 'East' or 'West'
*/
select * from superstore_sales where region = 'East' or region = 'West';
select count(*) from superstore_sales where region = 'East' or region = 'West';

/* 
Write a query to retrive all orders from the orders table where  the sub_category  is either 'Chairs' or 'Tables'
*/
select * from superstore_sales 
where sub_category = 'Chairs' or sub_category  = 'Tables';

/* 
Write a query to retrive all orders from the orders table where  the state  is either 'California ' or 'Florida' or 'NewYork'
*/
select * from superstore_sales
where state = 'NY' or state = 'FL' or state =  'CA';

-------------------------------------------------------------------------------------------------------------------
-- 										NOT Operator 


/* 
Write a query to retrive all orders from the orders table 
where  the state  is NOT 'California '
*/
select * from superstore_sales
where state != 'CA';

select * from superstore_sales
where not state = 'CA';


/* 
Write a query to retrive all orders from the orders table 
where  the category  is NOT 'Furniture'
*/
select * from superstore_sales
where not category = 'Furniture';

/* 
Write a query to retrive all orders from the orders table 
where  the region  is  'East '
and the category is either 'Office Supplies' or 'Furniture'
*/
select * from superstore_sales
where region  = 'East' and (category = 'Furniture' or category = 'Office Supplies');

/* 
Write a query to retrive all orders from the orders table 
where  the ship_mode  is  'Same Day '
or the Discount is greater then 0.2
or sales is greater then 500.
*/
select * from superstore_sales
where ship_mode = 'Same Day' or discount > 0.2 or sales > 500;

/* 
Write a query to retrive all orders from the orders table 
where  the category   is not  'Technology '
and either  the sales is greater then 1000 or 
ship_mode is 'Standard class'.
*/
select * from superstore_sales
where not category = 'Technology' and (sales > 1000 or ship_mode = 'Standard Class');


-------------------------------------------------------------------------------------------------------------------
-- 										NOT Operator ==> It works only for OR(and k lie nahi )
/* 
Write a query to retrive all orders from the orders table 
where  the region is 'East' , 'West' , 'Central'
*/
select * from superstore_sales
where region in ('East' , 'West' , 'Central');

/* 
Write a query to retrive all orders from the orders table 
where  the Sub_category is 'Chairs' , 'Phones' , 'Tables' or 'Art'
*/
select * from superstore_sales
where sub_category in ('Chairs' , 'Phones' , 'Tables' , 'Art');

/* 
Write a query to retrive all orders from the orders table 
where  the state is 'California' , 'Florida' , 'New York'
*/

select * from superstore_sales
where state in ('CA' , 'FL' , 'NY');

-------------------------------------------------------------------------------------------------------------------
-- 										BETWEEN

/* 
Write a query to retrive all orders from the orders table 
where  the sales amount between 500 and 1000;
*/
select * from superstore_sales
where sales between 500 and 1000;

/* 
Write a query to retrive all orders from the orders table 
where  the quantity  between 5 and 20;
*/

select * from superstore_sales
where quantity between 5 and 20;


/* 
Write a query to retrive all orders from the orders table 
where  the order_date between '2023-01-01'  and '2023-12-31';
*/
select * from superstore_sales
where order_date between '2023-01-01'  and '2023-12-31';

-------------------------------------------------------------------------------------------------------------------
-- 										ORDER BY==> use to sort the values like head in pandas 

/* 
Write a query to retrive all orders from the orders table 
Sorted by sales in descending order;
*/

select * from superstore_sales
order by sales desc;

/* 
Write a query to retrive all orders from the orders table 
first Sorted by region in ascending order and then by profit in descending order;
*/
select * from superstore_sales
order by region asc , profit desc;

/* 
Write a query to retrive all orders from the orders table 
first Sorted by region is 'East' and sort the results by sales in descending order;
*/
select * from superstore_sales
where region = 'East' order by sales desc;

-------------------------------------------------------------------------------------------------------------------
-- 										limit (no. of rows to show)

-- fetch 5 records
select * from superstore_sales limit 5;

-- fetch 10 records
select * from superstore_sales limit 10;

-- fetech 5 record related to 'Technology'
select * from superstore_sales
where category = 'Technology' limit 5;


-- fetch top 5 order which have higher sales 
select * from superstore_sales
order by sales desc limit 5;

-- fetch bottom 5 order which gave negative profit
select * from superstore_sales
order by profit limit 5;

-- fetch top 3 customer which have given highest sales by ordering phones 
select customer_name from superstore_sales
where sub_category ='Phones' order by sales desc limit 3;

-------------------------------------------------------------------------------------------------------------------
-- 										OFFSET (No.of rows to skip)

select * from superstore_sales OFFSET 5 ;

-- get last 5 rows using offset
select * from superstore_sales offset 500-5;
--or
select * from superstore_sales offset 495;

-- skip initial 10 orders in west region

select * from superstore_sales
where region = 'West' order by order_id offset 10;


-------------------------------------------------------------------------------------------------------------------
-- LIMIT + OFFSET ==>(After skiping how many rows you required )

--fetch last 10 rows
select * from superstore_sales limit 10 offset 490;

--fetch 300 rows by skiping first 100 rows
select * from superstore_sales offset 100 limit 300;









