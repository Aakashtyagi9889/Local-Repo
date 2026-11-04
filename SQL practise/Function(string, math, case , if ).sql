use ecommerce_db;
-- Some Strings Functions  
select * from employees;
select lower(name), upper(name) from employees;
select left(name,2) from employees;
select right(name,2) from employees;
select substr(name,1,3) from employees;
select mid(name,2,5) from employees;
select "I love Python", replace("I love Python","Python","java");
select trim("          Aakash     ");

-- Mathematical Functions
-- abs(), round(), ceil(), floor(), Mod(), sqrt()

-- Date And Time
select now();
select curdate(); 
select current_date();
select current_time();
select current_timestamp();
select curtime();
select today();

select month(now());
select monthname(now());
select year(now());
select dayname(now());
select dayofmonth(now());

select datediff("2026-08-18",now());
select datediff("2026-08-18","2022-04-18")/365;
select floor(datediff("2026-08-18","2022-04-18")/365),mod(datediff("2026-08-18","2022-04-18"),365);

select date_format("2026-08-18","%D-%M-%Y");

-- Aggregate Function
-- sum(), min(), max(), avg(), count()  

-- conditional statement / function 
select * , if(salary >50000,"High-Salary","Low-Salary")as Status from employees; 

-- Case

select *,
	case
		When salary<50000 then "Low_Salary"
		when salary<70000 then "Average_Salary"
		else "High_Salary"
	end as status 
 from employees;
