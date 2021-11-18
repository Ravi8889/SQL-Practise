select * from bonus;
select * from title;
select * from worker;
select  first_name as worker_name from worker;
###2
select upper(first_name) from worker;
###3
select distinct department from worker;
###4
select substring(first_name,1,3) from worker;
###5
select  instr(First_name, Binary "a") from worker where first_name ="Amitabh";
###
select rtrim(first_name) from worker;
select ltrim(department) from worker;
select department,  count(department)  from worker group by(department); # it prints the count of the department;
select distinct department, length(department) from worker; # it prints the length of the department
select replace(first_name,'a',"A") from worker;
select concat(first_name, ' ',last_name) as Complete_Name from worker;
select * from worker order by first_name asc;
select * from worker order by first_name asc ,DEPARTMENT desc;
select * from worker where first_name in("Vipul" ,"Satish");
select * from worker where first_name not in("Vipul" ,"Satish");
select * from worker where DEPARTMENT = "admin";
select * from worker where first_name  like "%a%"; # first name contains letter "a"
select * from worker where first_name  like "%a"; # frist name ends with "a"
select * from worker where first_name like "_____h";
select * from worker where SALARY between 100000 and 500000;
select * from worker where 	year(JOINING_DATE)=2014 and month(joining_date) = 2;
select count(*) from worker where department ="admin";
select * from worker;
select concat(first_name,' ', last_name)as worker_names , salary from worker where worker_id in(select worker_id  from worker  where salary between 50000 and 100000);

select count(worker_id) as No_of_workers, department from worker group by  DEPARTMENT order by no_of_workers desc;
select * from title;
select worker_id, first_name, last_name, salary, joining_Date,department, worker_title from worker join title on title.worker_ref_id = worker.worker_id;
select distinct w.first_name ,t.worker_title from worker w inner join title t on w.worker_id =t.WORKER_REF_ID and t.WORKER_TITLE in("Manager");
select worker_title , affected_from, count(*) from title  group by WORKER_TITLE , AFFECTED_FROM having count(*) > 1;
