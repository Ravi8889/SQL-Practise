# creation of data  base
#syntax ==> create database  database_name.
# drop data base
# syntax==> drop database database_name.
show databases;
use practise;
show  tables;
############## STORED PROCEDURES ##############
#Stored Procedures is a prepared sql queiry  that you can save so that the query can be  reused  over  and over again.
 #so if the user has an sql query that over and over  again   keep it as stored  procedure  and execute  it. here users can also pass parameters  to stored procedures  so that the  stored procedures 
 # can act based on  the parameter  values  that is given.
 # 1. Creating the Stored Procedures.
 select * from customers;
 call my_first_procedure(); # this is the selected columns form the customers in the using the stored procedures.
 use classicmodels;
select * from products;
 select * from products;
 call my_products();
 use practise;
 
 
 ######### Stored Procedures ############
 use practise;
 # create in the table practise  for products
 create table customers1(date_year int  not NUll,
 customer_id int  unique,
 product_quantity int  not null,
 price int check(price>10),
 region char(15) not null);
 show tables;
 desc  customers;
 create table customers(date_year int  not NUll,
 customer_id int  unique,
 product_quantity int  not null,
 price int check(price>10),
 region char not null);
 insert into customers1 values(2015,126,08,503,"Rajistan");
 (2010,121,04,500,"AP"),
 (2011,122,04,505,"Telengana");
 (2012,123,05,503,"UP"),
 (2013,124,06,550,"TamilNadu"),
 (2014,125,07,509,"Jammu"),
 (2015,126,08,503,"Rajistan");
 select count(*) from customers1; # 6 rows  5 columns
 select * from customers1;
 call max_procedure();
 call max_procedure();
 select * from customers1;
 use rk;
 call new_procedure();
 use practise;
 ## created the select procedure with the variable X defualt as 10;
 call select_procedure();
 # modifed the column name as Rk
 call select_procedure;
 # how to drop the stored procedures
 # drop procedure if exists procedure_name; # this is the sytnax i followed to drop the select_procedure;
 ## stored procedures Parameters ==> IN , OUT, INOUT.
 call parameterin(5); # even we give the parameter as 5 but the name is "ravi" has only one row 
 call parameterin("ravi");
 
 ## new in procedures parameter creaeted
 call parameter_in(501); # give the parameter value as 480 then we can are unable to see the one row in the table.
 # when we select the parameter as 501 then all the paramers above 500 will be displayed.
 call parameter_in(2012); ## product quantity is greater than > 5;
 call parameter_in(2010);# what ever the parameter value will be given only the wehe based on where cond it executes.
 call parameter_in(0);
 call parameter_in(5);# here there is no where clause
 call parameter_in(8); # only product _quantity details will be displayed
 call parameter_in(4); #0 the product_quantity has 4  has two items.
 
 