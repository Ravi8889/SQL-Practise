## Data Base Objects
#1. Table ==>completed
#2. Sequence ==>
#3.View==> 
#4. index==>



















###View ####
use rk;
select * from myemp;
select * from myemp limit 15;
## now i dont need these  many columns in the table i only selecet some columns  from the table
select emp_id,First_name,Last_name, Salary from myemp; # okay i got only selected columns i want to use these selected columns regulary so i don't want to type this full quiery all the time
create view myselection as select emp_id,First_name,last_name,Salary from myemp; # here i created a view with the name myselection when ever i want these table i can acces byusig the view name like we are acesing the table using table cmnd
select * from myselection; # its  is a view i was accessing it
# another example
select 	mv.id, mv.title, ifnull(mm.first_name,'-')as fname, ifnull(mm.last_name ,'-')as lname from movies as mv left join members as mm on mv.id =mm.movieid order by mv.id; # selected columns  using left join with movies and members table;
create  view myview as select 	mv.id, mv.title, ifnull(mm.first_name,'-')as fname, ifnull(mm.last_name ,'-')as lname from movies as mv left join members as mm on mv.id =mm.movieid order by mv.id; # created a view by selecting the output of important columns  of left join;
select * from myview;# accessig the view
show tables; # view s are also available in tables list 
# lets  create anothre view
select * from myemp;
select * from aview; # aview created in cmd line ui
# added elements into other than 10 the vallues are uploaded into table but inot view as we are mention wher cluase  where authorid <10;
# now drop  the view;
drop view aview;
select * from aview;
create view aview as select * from authors where authorid <10 with check option; # given permsion s to accept the values with in the weher clause lets check this  now
insert into authors values(19,"hari");
select * from aview;




##INdexs###
