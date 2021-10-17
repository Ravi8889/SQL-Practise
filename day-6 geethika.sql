use rk;
select * from authors;
desc authors;
select * from books;
desc books;
drop table authors;# foregin key can not be droped frist child table has to be droped
drop table books;
# creating the child table   and giving the permisions to delete the parent table and update the parent table
create table books(
book_id int primary key,
title varchar(255),
auth_id integer,
foreign key(auth_id) References authors(authorid)
on update cascade
on delete cascade);
desc books; # mul defines the foreign key
select * from books;
delete from authors where authorid=5; # authorid =5 deleted 
select * from authors;
select * from books;
delete from authors where authorid = 8;
select * from authors;
update authors set authorid = 80 where  authorid =8;
select * from authors;
select * from books;
update authors set  authorid =60 where authorid =6;# when we update here on authors as authorid =60 
select * from authors; # it will update because  it was updated above 
select * from books;# here but it was updated as automatically updated above;
show tables;
create table students(std_id int, std_age int, std_name varchar(255), std_course varchar(45));
insert into students values(10, 22, "ashish","mysql");
insert into students values(11,23,"Ravi", "analytics");
insert into students values(12,24,"kiran","Mysql");
insert into students values(13,25,"kumar" ,"Python");
select * from students order by std_id;
rollback;
select * from students order by std_id;
insert into students values(15,45,"Satya","Azure");# inserted a row
rollback;# just checked for the roll back operation not worked
select * from students;
set autocommit=0;# here i set autocommit as o 
insert into students values(17,46,"Shiva","AWS");
select * from students;
rollback;