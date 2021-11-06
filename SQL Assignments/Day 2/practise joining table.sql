show tables;
use classicmodels;
select * from products;
#setting up sample tables like table1, and table2
use practise;
create  table table1( 
member_id int auto_increment,
name varchar(100),
primary key(member_id)
);

create table table2(
commite_id int auto_increment,
name varchar(100),
primary key(commite_id)
);
show tables;
insert into table1(name) values("shiva"),("Satya"),("Kumar"),("Kiran"),("Sukuram");
insert into table2(name) values("shiva"),("Satya"),("Kumar"),("Kiran"),("Sukumar");
insert into table2(name) values("ravi");
select * from table1;
select * from table2;
## my sql inner join clause
use practise;
select * from table1 inner join  table2 on member_id = commite_id; # inner join using all columns
select t1.member_id, ## select the perticular columns wiht alias names
t1.name as table1,
t2.commite_id ,
t2.name as table2 from
table1 t1 inner join table2 t2 on t1.name =t2.name;
select t1.name , t2.name from table1 t1 inner join table2 t2 on t1.name = t2.name;# alias name reqiired because both the columns coantain same names;
########  LEFT JOIN ##########
select member_id, commite_id from table1 left join table2 on member_id = commite_id; #  based on id
select * from table1;
select * from table2;
select * from table2 left join table1 on commite_id =member_id; ##here the table2 has 6 columns and 6 rows but in the table one contains only 5 rows and 5 columns.
select * from table1 left join table2 on member_id =commite_id; # only joins the table based on left table.

### Right Join ==> the Right join Clause is similar to left join clause  the right join starts selecting from tohe right tables insted of left table  is reversed the ri
select * from table2 right join table1 on commite_id =member_id;
select * from table1 right join  table2 on commite_id = member_id; #right table has to be fully there.
select t1.member_id, t1.name, t2.commite_id,t2.name from table1 t1 right join table2 t2 on t1.member_id = t2.commite_id;
select * from table1 right join table2  using (name);# only one name wih wot mulitiplt cols id's
select t1.member_id, t1.name ,t2.commite_id,t2.name from table1 t1 right join table2 t2 using(name);
#how to select the right table data that only exists on the right table
select t1.member_id, t1.name , t2.name, t2.commite_id  from table2 t2  right join table1 t1 using (name) where t1.member_id is null;
### Cross JOIN ###
select * from table1  cross join table2;# table one cross joins with the table2
select * from table2 cross join table1;
select * from table1;
select member_id ,count(*) from table1 cross join table2; # total 5 member ids total count will be 30;
select * from table1 cross join table1;# coud not cross join with the single table
### Self Join###



