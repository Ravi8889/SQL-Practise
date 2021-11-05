show databases;
use practise;
show tables;
create table Sales(
sales_employee varchar(50) not null,
fiscal_year int  not null,
sale decimal(14,2) not null,
primary key( sales_employee,fiscal_year)
);
insert into sales (sales_employee, fiscal_year, sale) values ('Bob',2016,100),
      ('Bob',2017,150),
      ('Bob',2018,200),
      ('Alice',2016,150),
      ('Alice',2017,100),
      ('Alice',2018,200),
       ('John',2016,200),
      ('John',2017,150),
      ('John',2018,250);
      
################ show table#################
select * from sales;
### window fucntions with aggregate functions ==> sum(),count(), max(),min()
select  sum(sale) from sales; # it returns the sum of sales
select count(sales_employee) from sales; # tatoal count of sales employee is 9
## use of group by witb the aggregate functions
select fiscal_year, sum(sale) as sales from sales  group by fiscal_year;
select * from sales;
## group with sales _employee name 
select sales_employee, sum(sale) from sales group by sales_employee;
#################### Widnow functions########################
select fiscal_year, sales_employee,sale,
sum(sale) over (partition by fiscal_year) as "Total Sales" from sales;
