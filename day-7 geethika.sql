use rk;
create table tt(tid int , tname char(15));
show tables;
insert into tt values(8, "ab");
insert into tt values(9,"bc");
select * from tt;
insert into tt values(10,"de");
insert into tt values(11,"fg");
select * from tt;
start transaction;# the Transaction was started
insert into tt values(12,"hi");
insert into tt values(13,"jk");
insert into tt values(14,"lm");
select * from tt;
#now i was saying roll back before the transcation values will be present and after the tarnscation  was started there will be no values into it
rollback;
# auto commit goes on now  if we add any values into it it will automaticalyy commit  it and when agian say rollback it will not work
select * from tt;
insert into tt values(12,"hi");
insert into tt values(143,"rk");
select * from tt; # again values insertd onto table
rollback;
select * from tt; # but values doesn't go  off like that.
delete from tt;
rollback;
drop table tt;
select * from tt;
show tables;
create table tt(tid char(5));
start transaction;
insert into tt values("5");
insert into tt values("6");
insert into tt values("169");
insert into tt values("108");
insert into tt values("420");
savepoint cd; ## 169,108,420 gone
select * from tt;
rollback to ac;## 143,18,77 values gone
rollback;;# all the values gone
select * from tt;
call new_procedure();