# DDL commands this mainly contains  three commands they are 
#1 Insert
#2 Update
#3 Delete
use rk;
show tables;
select * from drinks;
create table shirts(s_id int, s_color char(15), s_size char(10));
insert into shirts values (10, "red" , "L"),(11,"black","XL"),(12, "white","S"),(13,"light_grey","XL"),(14,"sky_blue","XXL"),(15,"chromium","M");
select * from shirts;
set sql_safe_updates =0;
update shirts set s_color = "Yellow"  where s_size = "XL";
select * from shirts;
update shirts set s_color = "Light Blue" where s_size ="XXL";
select * from shirts;
update shirts set s_color  = "Red" where s_size = "L";
insert into shirts values(16,"Dark black","XXXl"),(17,"White", "S");
delete from shirts where s_id =17;

 