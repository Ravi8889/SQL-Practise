#And Or NOt Operators 
#AND OR NOT  ==> the where clause can be  combined with and, or ,not operators.
# And and Or Operators  are used to filter  records  based on more than one condition. 
# And condition works if all conditions are true
# Or condition works any  one condition are true
select * FROM country;
# AND OPERATOR 
select * from country where country_id < 20000 and region_id > 5000; # if both the conditions are true then only it will execute the select statements.
select * from country where country_id >100 and country_name  ="INDIA";
select * from country where country_id >100 and region_id >10;
## Or condition 
select * from country  where country_id >10 or country_name ="Japan";
select * from country;
select country_name from country where country_id  = "c1" or country_name ="Italy";
select * from country  where country_id = 9652580852 or country_name ="Indian"; # if both the or condition fails nothing will be execcuted;
select * from country  where country_id = 9652580852 or country_name ="India"; #there is no country_id =9652580852 and country_name = "India"
### NOt operator 
# the not operator displays a record  if the condition is not true;
select * from country where not country_id =9652580852; #if condion is not true;
select * from country where not country_name ="India"; # Except india all the other values will be printed.
select * from country where not country_name ="Italy";
select * from country where not country_id  ="c5";

