#Logical Operators using the Where clause AND ,OR, NOT.
use rk;
select * from myemp;
#AND 
select *from myemp where SALARY > 10000 and dep_id >60;
select * from myemp where salary >10000 and dep_id =80;
#OR 
select * from myemp where first_name ="Lisa" or last_name ="ravi";
select * from myemp where hire_date = 1999-01-11  or salary >20;
select * from myemp where hire_date =1999-01-11 and salary >30; # no one on my birthday date;
select * from myemp where dep_id = 60 or dep_id =40 or dep_id =20;
select * from myemp where dep_id  IN (40,30,60);
##NOT 
select * from myemp where salary NOT in (500,10);,2000,3000,4000,5000,6000,7000,8000,9000,10000,1500,2500,3500,4500,5500,6500,7500,8500,9500);# other than this all are printed
select * from myemp  where dep_id NOt in (30,10,60,80,90,100,70,50,110);# dep_id with 20 and 40 are the sum of rows =3;
select * from myemp where salary  NOt in  (5000 between 25000);

###year()
select year(hire_date),Hire_Date from myemp limit 10;
select concat(first_name, '',last_name)from myemp limit 5;


###Group functions 
# sum, min, max, avg,std,cout.for examples are 
select  min(salary) from myemp;
select max(salary) from myemp;
select avg(salary) from myemp;
select std(salary) from myemp;
select count(salary) from myemp;
select count(first_name) from myemp;
select count(distinct dep_id) from myemp; # 11 unique dep_id values 
select count(dep_id) from myemp;
select * from myemp;
select count(distinct mgr_id) from myemp;
select std(mgr_id) from myemp;
select avg(mgr_id) from myemp;
select max(mgr_id) from myemp;
select min(mgr_id) from myemp;
## with the  group by 
select dep_id , round(avg(salary)) from myemp group by dep_id;
select mgr_id ,std(salary) from myemp group by  mgr_id;
select * from  myemp;
select commission_pct , max(salary) from myemp group by COMMISSION_PCT;
select * from myemp limit 15;
select dep_id ,mgr_id ,avg(salary) from myemp group by dep_id, mgr_id;
select job_id, round(avg(salary)) from myemp group by job_id;
select dep_id,avg(salary) from myemp group by dep_id;
select dep_id ,mgr_id, round(min(salary),1) from myemp group by dep_id,mgr_id;

## joings In my sql there will be total 5 join's are there they are.
#1. Left Join,2. Right Join,3  Inner Join,4  Self Join,5  Cross join
select * from movies;
select * from members;	
select id, title, first_name, last_name from movies inner join members on id =movieid; 
## inner join example
select * from movies inner join  members on id =movieid;
#3 inner join with selected colnames
select  id, category , title , first_name,last_name, movieid from movies inner join members on id =movieid;  

#Left join 
select * from movies left join members on id= movieid;
select * from members left join movies on id = movieid;
### Right join all the rows will be available in right hand side of the table only the combinations of left will be present on right
select * from movies right join members on id = movieid;
select id,title,first_name,last_name from movies left join members on id="movieid" order by id;
select id , title , ifnull(first_name ,"-") as fname, ifnull(last_name,"-") as lname from movies left join members on id = movieid order by id; # insted of null values we got dashes there  ifnull(colname,"insted of null")
#right Join
select id,title ,first_name,last_name from movies right join members on id =movieid order by id;
select ifnull(id,"--")as  id, ifnull(title,"--") as title,first_name,last_name from movies  right join members on id=movieid order by id;
select * from members;

# Cross Join
select * from meals;
select * from drinks;
select mealname,drinkname from meals cross join drinks ;
select mealname,  meals.rate,drinkname, drinks.rate from  meals cross join drinks;
## alias names for table 
select m.mealname,d.drinkname, d.rate from meals as  m cross join drinks as d ; ## meals table changed to m and drink table changed to d
select drinkname, mealname from drinks cross join meals;
select mealname,drinkname from meals cross join drinks;

## self join
select * from myemp limit 10;
select emp_id,first_name,last_name, mgr_id,salary from myemp limit 5;# only selected coloumns selected 
select emp.emp_id,emp.first_name,emp.last_name, mgr.emp_id,mgr.first_name, mgr.last_name from myemp as emp  join myemp as mgr on emp.mgr_id =mgr.emp_id order  by mgr.emp_id;


