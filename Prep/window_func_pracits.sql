###Window Functions practise
use  practise;
select * from worker;
select  department ,max(salary) as max_salary from worker group by department ;
select e.*, max(salary) over() as  max_salary from worker e;
select w.* ,max(salary) over (partition by department) from worker w; ### partion by departement
select w.*, max(salary) over (partition by department  order by worker_id asc) as max_salary from worker w;
##### Row_number() ==> this is going to assian a unque value to the each record 
select w.*, row_number() over() row_num from worker w;
select w.*, row_number() over(partition by department) as rn from worker w;
select w.*, row_number() over(partition by salary order by worker_id asc) as rn from worker w;
select * from (select w.*, row_number() over(partition by department order by joining_date) as rn from worker w) x where x.rn < 3;
######### rank()
select w.*, rank() over(partition by department order by salary desc) as rnk from worker w; 
## fetching the top highest three salary from the each department
select * from (select w.*, row_number() over(partition  by department order by salary desc) row_num,
rank() over(partition by department order by salary desc) as rnk ,
dense_rank() over(partition by department order by salary desc) as dens_rnk from worker w) as x where x.dens_rnk < 3;
### feching the top two highest salary worker table using the rown number
select  * from (select w.*, row_number() over(partition by department order by salary desc) as rw_num from worker w) as x where x.rw_num <3;
#### lag() -- this is used to get the previous recods
select w.*, lag(salary, 1, "fist_value") over(partition by  department order by worker_id) as pre_sal from worker w;
## comparing the salary to previous values
select w.*, lag(salary) over(partition by department order by worker_id) as pre_sal,
case when w.salary > lag(salary) over(partition by department order by worker_id)  then "Higher than previous One"
	 when w.salary < lag(salary) over(partition by department order by worker_id)  then "lower than previous One"
	 when w.salary = lag(salary) over(partition by department order by worker_id)  then "Same as  previous One"
     end as sal_range
from worker w;

select w.*, lead(salary ,1,5) over(partition by department order by worker_id) as next_sal from worker w;


### second part in Window Functions
 

 








select w.*, dense_rank() over() rk from worker w;