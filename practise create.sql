##### W3 Resourceses  Table Creeation exercises #####
show databases;
use practise;
show tables;
create table dup_countries(country_id int , country_name char(15), region_id varchar(25));
show tables;
desc dup_countries;
desc country;
drop  table country;
select *  from country;
drop table dup_countries;
create table countries(country_id int not null, country_name char(15) not null, region_id int not null);
desc countries;
create table jobs(job_id int , job_title char(20), min_salary int(15), max_salary int check(max_salary >25000));
desc jobs;
insert into jobs  values(101,"Analyst",15000,10000,);# check constraint is working  this is for testing purposes;
create table if not exists countries1(country_id int, country_name char(15) check(country_name in("italy","china","india")), region_id int);
desc countries;
desc countries1;
insert into countries1(115,"Germany",1103346);# check constarint is working
insert into countries1 values(115,"India",1103346);
select * from countries;
select * from countries1;
show tables;
# end_Date column must be in format of "--/--/----"
create table job_history(employee_id varchar(10), start_date varchar(10), end_date varchar(10)check (end_date like '--/--/----'), job_id int, dept_id int);
## country_id must be unique()
create table cuntry(country_id varchar(115) unique, country_name char(110), region_id int);
desc cuntry;
show tables;
drop table countries;
drop table countries1;
drop table cuntry;
drop table job_history;
drop table jobs;
show tables;
create table if not exists jobs(
job_id  varchar(110) not null unique,
job_title varchar(110) not null  default '',
min_salary decimal(6,0) default 8000,
max_salary decimal(6,0) default NULL
);
desc jobs;

#11 tables named countries 
create table if not exists country(country_id int
 Primary key, country_name char(25),
 region_id int,
 unique(country_id));
 desc country;
 show tables;
 drop table country;
 drop table jobs;
 # 12 countries country_id must be unique and it has to perform auto unique
 create table countries(country_id int unique auto_increment , country_name char(10), region int); # unique  + auto_increment == primary key
 desc countries;
 #13  combination of both country_id and region_id will be unique
 create table rk(country_id int unique, country_name char(115), region_id int unique);
 desc rk;
 show tables;
 #14
 create table job_history (employee_id int unique, start_date varchar(15),end_date varchar(15), job_id int primary key   ,department_id int);
 desc job_history;
 #15
 create table employees(employee_id int primary key, first_name char(10),last_name char(10), email varchar(15), phone_number varchar(15), hire_date varchar(10), job_id int, salary int, commision int ,manger_id varchar(10), dept_id decimal(6,0),foreign key(dept_id, manger_id) references departments (department_id, manager_id));
 
 show tables;