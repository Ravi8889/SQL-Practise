select * from orders;
select customerNumber, orderNumber,status from orders group by status, orderNumber, customerNumber;
select status,orderNumber from orders group by status,orderNumber;
select * from employees;
select email, jobTitle, employeeNumber, lastname from employees group by  email;
select * from offices;
