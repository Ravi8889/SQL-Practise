# Aggregate Function's   in Count ==> Sum, Count and Avg
show tables;
select * from country;
select * from country_new;
select * from jobs_sal;
select count(max_sal) from jobs_sal; # it gives the count of column name;
select count(country_name) from country;# ==> gives country_name as 9
select count(country_id) from country;# ==>gives 9
select count(country_id) from country_new; # ==> gives 4
select * from country_new;
#count() this gives the count no of values in that perticular column in that tables
#sum()==> this gives the sum of the values in that perticular column in that tables 
# avg() => this gives the svg of the values in that particular column in that tables 
select * from jobs_sal;
select sum(max_sal) from jobs_sal; #==>1500 *3 =>45000
SELECT SUM(MIN_SAL) FROM JOBS_SAL; #==> 24000
select sum(job_role) from jobs_sal; # data type object sum is zerp
select sum(job_id)from jobs_sal; ## sum is ==>1579
select * from country;
select sum(region_id) from country; #==> 805553
select sum(country_id) from country; #==> country id sum is 4046
select sum(country_name) from country;# sum is zero because of the object data type
###
select avg(region_id) from country;# avg ==>115079
select avg(country_id) from country; #===>449.55555555554
select avg(country_name) from country; # ==>0
select avg(min_sal) from jobs_sal; #==>avg ==8000.0000
select avg(max_sal) from jobs_sal; #avg ==>15000.0000
select avg(job_role) from jobs_sal;#==>0
select avg(job_id) from jobs_sal; # avg ==>jobs _sal==>526.3333;