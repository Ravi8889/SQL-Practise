###### where clause ############
## this has two more options they are 1.) OR and 2.) And
select * from customers;
select country, state, city fro
m customers ;
select country, state from customers where country ="US" and state ="CT" ;
select * from customers  where  country ="US" or state ="NY";
select * from customers where city ="Las Vegas" or city ="Nantes";
select * from customers where country ="Australia" and city ="MElbourne";
select * from customers where country ="Australia" and city =" NSW";