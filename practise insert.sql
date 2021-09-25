use practise;
show tables;
# creation of country tables;
create table country(country_id varchar(40)  primary key, country_name varchar(40), region_id decimal(10,0));
# description of table;
desc country;
# inserting the values  into country table
insert into country values(1010,"India",789);
insert into country values(1011,"China",987);
insert into country values(1012,"Egypt",963);
insert into country values(1013,"Australia",369);
#show table createdd
select  * from country;
##2 
insert into country(country_id,country_name) values ("c1","Italy"); # the region id will be null
select * from country;
#3
create table country_new(country_id varchar(2), country_name varchar(10), region_id decimal(10,0));
desc country_new;
#4 insert null valules against region id 
insert into country_new(country_id, country_name,region_id)values("C4", "Italy",Null); # counrty_id values must be chars because of 2 values in it
select * from country_new;
#5 insert three  rows in a singele insert statement;
insert into country_new values("c5", "Japan", 9652),("C6","Mexico",5808),("c7","India",786985);
select * from country_new;
desc country_new;
#6
# How to insert coutry_new table values into country table 
insert into country select * from country_new; ## Power Full Queiry;
select * from country;
#7 Write a SQL statement to insert one row in jobs table to ensure that no duplicate value will be entered in the job_id column.
create table if not exists jobs(job_id int unique not null , job_tilte varchar(12), salary decimal(10,0));
select * from jobs;
desc jobs;
# 9 
CREATE TABLE IF NOT EXISTS countrie3 ( 
COUNTRY_ID integer NOT NULL,
COUNTRY_NAME varchar(40) NOT NULL,
REGION_ID integer NOT NULL,
PRIMARY KEY (COUNTRY_ID,REGION_ID)
);
desc countrie3; # this has two primary keys;
insert into  countrie3 values( 501,"India",185);
# eneter the same values into the table
insert into countrie3 values(501,"JUmmu",185); # duplicate entry for key countrie3.Primary
show tables;
#10
create table employee(emp_id int unique  auto_increment ,emp_role varchar(45) not null, emp_sal int); # this was auto_increment;
desc employee;
#11
create table empp(country_id  int unique auto_increment , country_name  varchar (15) not null default'N/A', regio_id int);
desc empp;
#12
show tables;
create table if not exists jobs_sal(job_id int primary key unique,  job_role varchar(15), min_sal int default 8000, max_sal int default 15000);
desc jobs_sal;
insert into jobs_sal(job_id,job_role)values(11,"clerk");
insert into jobs_sal(job_id,job_role)values(12,"PO");
insert into jobs_sal(job_id,job_role)values(1556,"Officer");
select * from jobs_sal;
create table if not exists jobs_historyy(job_id int, job_title varchar(15), min_sal int default 45000, max_sal int default 89521, foreign key(job_id) REFERENCES jobs(job_id)); # references spelling must be check correctly.
insert into jobs_historyy(job_id, job_title)values( 11,"Devloper");# this is the foregin key table;
show tables;
create table rk1(emp_id int primary key unique, job_id int, min_salary int default NULL, max_salary int default NUll , foreign key (job_id)references jobs_sal(job_id));
insert into rk1 (emp_id,job_id) values(11, 1556);
insert into rk1(emp_id,job_id) values(15,16646); #  because it  is a child row here job_id is a foregin key which is not available inside the jobs_sal tab;e