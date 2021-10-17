use rk;
show tables;
drop table students;
show tables;
## hence here we deleted the students table 
# Key Constraints; ==> not null, unique, defualt, check.
# Domain Costraints; ==> Primary key, Forigen Key and Index
create table students(
std_id int unique,
std_name varchar(30) not null,
std_age int check(std_age >20),
std_course char(30));

select * from students;
desc students; # for description of table
insert into students(std_id, std_name,std_age,std_course)values(1,"Ravi",22,"Analytics");
insert into students values( "45","Kiran", 21,"SQL");
insert into students values(03, NUll,23,"DS");## this is std_column canot be null  
insert into students values(03," Krishna", 25,"python"); ## this is a duplicate key unique constraint is voilated 
insert into students values(05,"kasturi",18,"R"); # check values must satisfy check  constrained is voilated

drop table students; # again droping the table to practise more on constraints
Create table employee( 
emp_id int not null,
emp_name char(35) Unique,
emp_sal int check(emp_sal >10000),
emp_pos char(45) not null);
show tables;
select * from employee;
desc employee;
insert into employee values(101,"Ajay",NUll,"demo"); # i kept sal is null it works
insert into employee values(102,"Anurag",15000,NUll);# here i kept emp pos as null error ( emp_pos can not be null)
insert into employee values(102,"akash",12000,"labour"); # here i kept emp_id as same 102 no error becasue unique is given to only name column
insert into employee values (123,"Akash",10555,"manager"); # here error occurerd (Duplicate key occoured ) the name akash is already given;
insert into employee values(145,"Ravi kiran",5000, "labour"); # here i given sal is 5000 which check constraint not satisfied 
insert into employee values(154,"Ravi Kiran", 500000,"Ceo");
insert into employee values(162,"kiran sivakesh","450000","Hr");# here even last name is matched but not errror occured;
select * from employee;
drop table employee;# again drop the newly created table because to check onn Domain Constraints;
create table student(
std_id int not null,
std_name char(30),
std_age int,
check(std_age>18),
std_course char(35),
unique(std_id));
desc students;
desc student; # Not NUll + Uniuque for the same coolumn is said to be as Primary key
drop table student;
create table student (std_id int Primary key,
std_age int default(45),
std_name char(35),
unique(std_name));
desc student; # primary key id given directly here 
drop table student;
drop table students;
create table employee(
emp_id int NOt null,
emp_name char(30) ,
unique(emp_id), # indirectly primary key unique + Not null is given to emp_id still it goes to Unique key constraint not to primary key.
emp_age int Primary Key); # primary key is given directly
desc employee;

drop table employee;
show tables;
## defualt constarint
create table employee(
emp_id int  not null,
emp_name varchar(23),
emp_dept varchar(255) default "Operations");
desc employee; # here we kept emp_dept has defualt values as operations.
insert into  employee(emp_id,emp_name)values(13,"Sandy");
select * from employee;## automatcially defualt values dispalayed when we not mentioned inthe query also.
####Index 's 
show tables;
select * from employee;
create index rk on employee(emp_name);
create index sk on employee(emp_dept);
show index from employee; ## key name is specifed as index 
show index from employee;
drop index rk on employee;
drop index rk on employee;
drop index sk on employee;
show index from employee; # no index for employee table
drop table employee;
show tables;

