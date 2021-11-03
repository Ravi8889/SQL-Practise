select * from offices;
select * from customers;
select * from orders;
############# inner join ###############
desc orders;
desc customers;
select customerName, phone, country, city,status,orderNumber from customers inner join orders on customers.customerNumber = orders.customerNumber;

### customer details with name, country, state, city, creditlimit.
select  customerName, country, state, city ,creditLimit from customers
inner join orders on customers.customerNumber = orders.customerNumber ;
###################3
select * from orderdetails;
select * from orders; # these two have common as ordernumber
#########################
select * from employees;
select * from offices; # these two have common as officecode
#####################
select * from t1;
select * from t2; # nothing
########## Left Join #########
select customerName, phone, country, city, status, orderNumber from customers left join  orders  on customers.customerNumber = orders.customerNumber;
select * from orders; 
select * from customers;
##################3 Right Join ###############
select customerName, phone, country, city, status, orderNumber 
from customers 
Right join
orders on orders.customerNumber = customers.customerNumber;
select customerName, phone, country, city, status, orderNumber from customers  join orders on orders.customerNumber =customers.customerNumber;