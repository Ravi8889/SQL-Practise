# here  we learn about the conditiional statements.
# if statemnet
# Case statement
use classicmodels;
show tables;
select * from customers;
select * from employees; # created a if loop whose jobtitle is Sales Rep  slect whoose only thoose  employee number is greater than >1500
call employees_customer();# need to passs title as argument
call employees_customer("Sales Rep",1500);
############### IF FUNCTION
use classicmodels;
SELECT IF (1 = 2,'true','false') as  TF;
SELECT IF (1 = 1, 'TRUE','FALSE') AS FT;
call employee_if("Sales Rep");
