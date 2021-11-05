use classicmodels;
select * from payments;
select p.*, max(amount) from payments as p;
select p.*, max(amount) over(partition by customerNumber order by customerNumber) as max_ammount from payments p;
#### Row_number
select p.*, row_number() over(partition by checknumber ) as row_num from payments p; # check number will be one so  will be as output
select p.*, row_number() over(partition by customernumber order by customerNumber) as row_num  from payments p;

### rank()
select p.*, rank() over(partition by customerNumber) as row_numm from payments as p;
select p.*, dense_rank() over(partition by paymentDate) as row_numm from payments as p;
### lag()
## lead()
select p.*, lag(customerNumber,1,0) over(partition by customerNumber) as lags from payments as p;
select p.*, lead(customerNumber,1,0) over(partition by customerNumber)  as leads from payments as p;