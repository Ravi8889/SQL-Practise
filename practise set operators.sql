show databases;
use classicmodels;
show tables;
###### set operations ##########
#Union ==> my sql union operator allows you to combine two or more result sets of quiers into  a single result  set the following illsturates  the syntax  of the union operator.
# Each sql statement within union should have  the same number of columns  the columns in each select should have same number of columns with the similar order the columns should also have  similar data types.
## Lets create table
drop table if exists t1;
drop table if exists t2;
create table t1(t_id int primary key);
create table t2(t_id int primary key);
show tables;
insert into t1 values(1),(2),(3),(4),(9); 
insert into t2 values(7),(8),(40),(445);
select * from t1;
select * from t2;
select t_id  from t1 union select t_id from t2;# frist it selects t1 and then it select t2 inte same column
select t_id from t2 union select t_id from t1; # same vise versa.
insert into t2 values(1),(2),(3),(9);
select * from t2; # created same values as  t1 now select the union set operatot to combine and see
select t_id from t1 union select t_id from t2;
### Union All ==> the union all doesn't need to  handle the duplicates it performs faster than union distinct 
select t_id from t1 union all select t_id from t2; #allowing the dupicates
select t_id from t2 union all select t_id from t1;# same
select * from employees;
select * from customers limit 5;
select 
	 firstname, 
	 lastname 
 from employees
 UNION 
 select
	contactFirstName,
	contactLastName
 from 
	customers;
    
    
