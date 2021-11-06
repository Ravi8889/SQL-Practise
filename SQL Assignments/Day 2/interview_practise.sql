show databases;
use practise;
show tables;
select * from jobs_sal;
select  max(max_sal)   from jobs_sal where max_sal < (select  max(max_sal) from jobs_sal); 
create  table employee(emp_id int auto_increment Primary Key  , emp_name varchar(5),salary varchar(15));
insert into employee(emp_id, emp_name, salary) values(1,"A",5000);
insert into employee(emp_name,salary) values("B",7000);
insert into employee(emp_name,salary) values("C",8000);
insert into employee(emp_name,salary) values("D",6500);
insert into employee(emp_name,salary) values("E",9800);
insert into employee(emp_name,salary) values("F",9750);
select * from employee;
## using the agreegated functions
select max(salary) from employee where salary < (select max(salary) from employee); ## second highest salary using the aggregate functions
select (salary) from employee;
### using the limit
select salary from (select salary from employee order by salary desc limit 2) employee order by salary limit 1; ## second highest salary
##3 using the Top
select * from employee;
select emp_name as lower(emp_name)	from employee;
update employee set salary  = salary +(salary * 6/100);