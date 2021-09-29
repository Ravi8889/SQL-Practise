use practise;
show tables;
select * from rk1;
select * from rk;
select  * from countrie3;
select * from countries;
select  * from country;# contains data
select * from country_new;# contains data
select * from emp;
select * from empp;
select * from employee;
use practise;
show tables;
############## Where Clause ################
# The where clause is used to filter the records it is used to extract only those records that fullfill the specified condition.
desc country;
select * from country;
select country_name from country where region_id =789; # only contry  name will be dispalyed
select * from country where region_id >=789;# all the columns with greater than 789;
select * from country where region_id =9652; # only perticular column will be retrived
# operators in where clause ==>=,<=,>=,>,<,<> or != ,Betweeen , Like , IN 
select * from country where region_id  >= 500; #(>=) operator;
show tables;
select *  from country_new;
select * from  country_new where  country_id > "C4";# the charecter variables must always in double quotes;
select * from country_new where country_id = "C6";
select * from country_new where country_id <="c5";
select country_name from country_new where region_id  ="Null";
select * from country_new where region_id <> 500;#  not equal to
select * from country_new where region_id != 9652;
select * from country_new  where country_id between "C4" and "c7"; # betweeen c4 and c7
select * from country_new where country_name like "%a"; # ends with the letter a ;
select * from contry_new where country_name like "_a";
select * from country_new where country_name like "____a";# the before 4 are empty spaces are represents the letter names
show tables;
select * from country;
select country_id from country where country_name in ("Italy", "china", "Egypt","Australia");# we can get the country id
select country_id from country where  region_id in(789,987,963,369);
select country_name from country where region_id in(789,987,963,369,9652,5808);
select * from country;

