SELECT * FROM classicmodels.orders;
desc orders;
select orderNumber, count(orderNumber) from orders;# they are total 326  orders in the order table
select status , count(status) as statuses from orders;
select * from classicmodels.orders order by customerNumber;
select * from customers;
select *  from classicmodels.customers order by customerNumber;
select * from orders order by status; #Status is order in the alphabetical order.
select * from orders order by status ,customerNumber desc;
select * from orders order by customerNumber ,status desc;
select * from orders;
select * from orderdetails;
select * from orderdetails order by priceEach; # the starting price of the order is 26.55 rs
select * from orderdetails order by priceEach, quantityOrdered; # quantity ordered starts  from 20 
select * from orderdetails order by priceEach, quantityOrdered desc; # quantity ordered starts from 33
select * from orderdetails order by priceEach desc; # the Highest price is 214.30
select * from orderdetails order by  orderNumber, priceEach, quantityOrdered desc;
select * from orderdetails order by quantityOrdered desc; #highest Quantity orderd is 97.
select * from orderdetails order by quantityOrdered * priceEach;
select orderNumber, quantityOrdered, priceEach, quantityOrdered*priceEach as total_Ammount from orderdetails;
############## Order By feild ########
select * from orders;
select * from orders  order by field('status','In Process','cancelled','shipped','On Hold','Resolved','Disputed');
