use rk;
select * from books;
update books set sales = sales  + 2 where book_id =4;
# we need to learn Triggers again


## Data Base Objects   Sequence
create table mytab(id integer Primary key auto_increment, name char(20),age int);# sequence created and it was associated with it
desc mytab;