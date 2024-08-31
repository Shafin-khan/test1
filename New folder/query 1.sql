--  Select everything from sales tablbe
select * from sales;

-- Show just few columns from sales table
select SaleDate, Amount, Customers  from sales;

-- Adding Calculated colulmn with sql
select Saledate, Amount, Boxes, Amount/Boxes as 'Amount Per Boxes' from sales;

-- --Use of where clause in SQL
select Amount, Customers, Boxes
from sales where Amount > 5000 ;


-- showing sales data where amount is greater than 10k 
select* from sales 
where Amount > 10000
order by Boxes desc;

-- Working with Date in SQL
Select* from   sales
where Amount>10000 and SaleDate>='2022-01-01';

-- use of  Year function in SQL
Select SaleDate, Amount
from sales
where Amount> 10000 and year(SaleDate)=2022
order by Amount;


-- use of Between condition in SQL

select* from sales 
where Boxes>0 and Boxes<50;


select* from sales 
where Boxes between 0 and 30
order by Amount  ;


-- Use of weekday in SQL

select SaleDate, Amount, Boxes, weekday(SaleDate) as 'Day of week'
from sales
where weekday(SaleDate) = 4;


-- here
-- 0 corresponds to Monday,
-- 1 corresponds to Tuesday,
-- 2 corresponds to Wednesday,
-- 3 corresponds to Thursday,
-- 4 corresponds to Friday,
-- 5 corresponds to Saturday, and
-- 6 corresponds to Sunday.



-- in operator in SQL

select* from people
where team in ( "Delish", "Jucies");

-- Like operator in SQL
select* from people
where Salesperson like "B%";

select * from people 
where Salesperson like "%B%";-- this query search any word where b is present


-- Use of Case in SQL
select Saledate, Amount,
case   
when amount <1000 then 'Under 1k'
when amount <5000 then 'Under 5K'
when amount < 10000 then 'Under 10k'
else "10k or more"

 end as "amount category"
from sales;

select team, count(*) from people
group by team;


 
 






