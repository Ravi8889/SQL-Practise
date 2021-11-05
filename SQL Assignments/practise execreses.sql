 ################# Exercise s by the video ####################
 use classicmodels;
 show tables;
 select * from products;
 ##arthmaical expression using the select clausee
select productName, buyprice, ( buyprice  * 1.1) as profit_price from products;
### use distinct
select distinct productline from products; ## unique product line from the products
## get the orders are placed this year
select * from orders;
select * from orders order by orderDate desc; ## 2005-2003
select orderNumber , orderDate from orders where orderDate > "2003-12-31"; # getting only 2004 and 20005
select * from orderdetails;
select distinct orderlineNumber from orderdetails;
select  * from orderdetails where orderLineNumber = 6 and priceEach >150;
select * from products;
select * from productlines;
select * from products where productscale in ('1:20','1:10','1:12','1:75','1:72');
select * from orders;
select * from orders  where orderDate between "2003-01-01" and "2003-02-01"; # one month orders
select * from customers;
select * from customers where customerName  like 'n%';  #starts with %
select * from customers where contactFirstName like '____i'; # matti;
select * from customers where contactlastName  regexp "kiran$";
select * from customers where contactFirstName regexp "ravi$";
select *  from customers where addressLine1 regexp '^a[A-Z]z$' ;
select * from customers where phone regexp "9$";
