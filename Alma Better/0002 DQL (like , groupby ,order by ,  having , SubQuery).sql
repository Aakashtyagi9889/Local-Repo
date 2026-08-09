-- fetch first 5 records
select * from superstore_sales limit 5;

-- fetch Last 5 records
select * from superstore_sales offset 495;

-- fetch record from 300 to 400
select * from superstore_sales offset 300 limit 100; 


-------------------------------------------------------------------------------------------------------------------
-- 									Like (Fetch information based on pattern  (% , __)
-- 	1. Pattern ( word % )
--fetch order related to west region
select * from superstore_sales where region like 'W%';

-- fetch order related to Corporate 
select * from superstore_sales where segment like 'Cor%';

-- 	2. Pattern (% word )
-- fetch all the order related to Segmant Consumer;
select * from superstore_sales where segment like '%r';

-- 	3. Pattern (word % %word )
-- fetch all the order related to east region
select * from superstore_sales where region like 'E%%t';

-- 	4. Pattern (% word % )
-- fetch all the order related to east region
select * from superstore_sales where region like '%as%';

-- 	4. Pattern (%_ % )
select * from superstore_sales where region like '%_a%';

-------------------------------------------------------------------------------------------------------------------
-- 							Aggregate (perform calculation in set of value and return single value)

-- Write a query to calculate the total sales from the Orders table.
select Sum(sales) from superstore_sales;
-- alias
select Sum (sales) as Total_sales from superstore_sales;

--	Write a query to count the total number of orders in the Orders table.
select count(*) from superstore_sales;

-- Write a query to find the maximum sales value from the Orders table.
select max(sales) from superstore_sales;

-- Write a query to find the minimum profit value from the Orders table.
select min(profit) from superstore_sales;

-- 	Write a query to calculate the average discount from the Orders table.
select avg(discount)  sales  from superstore_sales;

-- All aggregates in 1 line
select count(*) as Total , max(sales) as maxiumn_sales , min(sales) ,sum(sales) , avg(sales) from superstore_sales;

-- Aggregates based on conditions

-- Find how many orders are there related to technology
select count(*) from superstore_sales where category = 'Technology';  

-- Find how many distinct orders are there related to technology
select count(distinct order_id) from superstore_sales where category = 'Technology';

-- find how many orders from east and west
select count(*) from superstore_sales where region in( 'East' , 'West' );

-- find total sales made in California(CA)
select sum(sales) from superstore_sales where state = 'CA';

-- find maximum profit given by Phones
select max(profit) from superstore_sales where  sub_category = 'Phones';

-- find minimum profit given by chairs
select min(profit) from superstore_sales where sub_category = 'Chairs';

-- find average sales made by corporate segments
select avg(profit) from superstore_sales where segment = 'Corporate';

-------------------------------------------------------------------------------------------------------------------
-- 							Group by  (perform calculation by making group )


-- 	Write a query to calculate the total sales for each Region in the Orders table.
 select region , sum(sales) as total_sales 
 	from superstore_sales group by region;

-- sort the above result in decraesing order
select region , sum(sales) from superstore_sales group by region order by sum(sales) desc;

--	Write a query to count the number of orders for each Category in the Orders table.
select category , count(order_id) from superstore_sales group by category order by count(order_id) desc;	

-- Write a query to find the average sales for each Sub-Category in the Orders table.
select sub_category , avg(Sales) from superstore_sales group by sub_category order by avg(sales) desc;

-- Write a query to retrieve the top 5 Sub-Categories by total sales in the Orders table.
select sub_category , sum(sales) from superstore_sales group by sub_category order by sum(sales) desc limit 5;

--	Write a query to retrieve the top 5 States by total sales in the Orders table.
select state , sum(sales) from superstore_sales group by state order by sum(sales) desc limit 5;

/*Write a query to calculate the total profit for
each combination of Region and Category*/
select region , category , sum(profit) 
from superstore_sales group by region , category 
order by region , sum(profit) desc;

/*Write a query to calculate the average 
quantity , minimum quantity for each Sub-Category in the Orders table*/
select * from superstore_sales;

select sub_category  , avg(quantity) , min(quantity) from superstore_sales
	group by sub_category ;

/* Write a query to retrieve the bottom 5 
subcategories by total profit in the Orders table*/
select sub_category , sum(profit) from superstore_sales 
	group by sub_category 
		order by sum(profit) limit 5;

--find max , min , average , sum of sales , count of order with respect to categories 
select category , max(sales) as max_sales , min(sales) as min_sales , avg(sales) as avg_sales,  sum(Sales) as Total_sales, count(order_id) from superstore_sales
	group by category;


-------------------------------------------------------------------------------------------------------------------
-- 								HAVING Clasue 

--     SELECT --> FROM --> WHERE --> GROUP BY --> HAVING --> ORDER BY


/* Write a query to retrieve the total 
sales for each Region where the total sales
are greater than 60000*/
select region , sum(sales) from superstore_sales
group by region 
having sum(Sales)>60000;

/* write a sql query to find 
region wise total sales given by 
technology products which are greater than 20000*/

select * from superstore_Sales;

select region , sum(sales) from superstore_sales
where  category = 'Technology'
group by region  
having sum(sales) > 20000
order by sum(sales) desc;

/*Write a query to count the number 
of orders for each Category where 
the total number of orders is greater than 160*/

select category , count(order_id) as Total_order from superstore_sales group by category having count(order_id)>160 ;

/*Write a query to find the total profit 
for each Sub-Category where the total profit 
exceeds 6500*/
select sub_category , sum(profit) from superstore_sales
group by sub_category
having sum(profit) > 6500
order by sum(profit);

/*Write a query to retrieve the total 
sales for each State where the
total sales are less than 50000*/
select state , sum(sales) from superstore_sales
group by state 
having sum(sales)<50000
order by sum(sales) ;


/* Write a query to find the average 
discount for each Region where the
average discount is greater than 0.16*/

select region , avg(discount) from superstore_sales
group by region
having avg(discount)>0.16
order by avg(discount) desc;


-------------------------------------------------------------------------------------------------------------------
-- 								SUBQUERIES  

-- Find the maximum sales
select max(Sales) from superstore_sales;

-- find order details which is giving highest sales;
-- outer query + operator + (inner query)
	--  order details (sales) = max(sales)
select *  from superstore_sales
where sales = (select max(sales) from superstore_sales);

-- find the customer name who has giving minimun profit 
select customer_name from superstore_sales
where profit = (select min(profit) from superstore_sales);

-- Find all customer whose sales are greater than the average sales.
select * from superstore_sales
where sales > (select avg(sales) from superstore_sales);







