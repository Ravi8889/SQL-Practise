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
