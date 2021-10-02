### Group By==> group by used to  group  rows from  the table. And it has the  same values as summary rows.
## for Example  find the number  of customers in  each country , the group by is often used  with the aggregate  functions like (count, max, min,sum, avg)
#to group the result set by one or more columns.
use practise;
show tables;
select * from country;
update country set region_id = 9989 where country_id ="c1";
select * from country;
update country set region_id = 786 where country_name ="Italy";# not updated because it has two values with the italy
update country set region_id =786 where country_id  ="C4";
select * from country;
#### Group By functions #######
show databases;
use classicmodels;
show tables;
select * from orders;
select status, customerNumber from orders where status ="on Hold" group by status;
select status, customernumber from orders where status ="On Hold" group by customernumber;
select * from orders;
select * from orders where status ="shipped" group by customernumber;
select  count(customernumber) from orders;
##group by 
select status from orders group by status;
select status,count(*) from orders group by status;
select * from employees;
select officecode, firstName, LastName from employees group by  officecode;#3 it acts as distinct 
select email,officecode from employees group by email; 
select email,count(*) from employees group by email;
select jobtitle from employees group by jobtitle;
select jobtitle ,count(*) from employees  group by jobtitle;
select * from employees;
select employeeNumber,count(*)  from employees group by employeeNumber;
select firstname,lastname, employeenumber ,count(*) from employees group by firstname,lastname, employeenumber;
# group by using the aggregate functions
select * from orders;
select orderdate ,count(*) from orders group by orderdate;
select comments from orders group by comments; # it acts as a discnct 
select comments, status ,count(*) from orders group by status;
show tables;
select * from orderdetails;
select ordernumber, sum(quantityOrdered * PriceEach) as total from orderdetails group by ordernumber;
select * from orders;
select year(orderDate) as YEAR , count(ordernumber) from orders group by orderdate;
select year(orderdate ) as YEAR , count(ordernumber) from orders group by Year;
# here my sql allows us to sort the groups into ascending or descending orders 
select * from orders;
select status, count(*) from orders group by status desc;
## group by with the having clause
 select status, count(*) from orders group by status having status ="shipped";# only 303
 select status,count(*) from orders  group by status having status ="cancelled";#only 6
 select status,count(*) from orders  group by status having status ="Resolved";# only 4
