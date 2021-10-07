# creation of data  base
#syntax ==> create database  database_name.
# drop data base
# syntax==> drop database database_name.
show databases;
use practise;
show  tables;
############## STORED PROCEDURES ##############
#Stored Procedures is a prepared sql queiry  that you can save so that the query can be  reused  over  and over again.
 #so if the user has an sql query that over and over  again   keep it as stored  procedure  and execute  it. here users can also pass parameters  to stored procedures  so that the  stored procedures 
 # can act based on  the parameter  values  that is given.
 # 1. Creating the Stored Procedures.
 select * from customers;
 call my_first_procedure(); # this is the selected columns form the customers in the using the stored procedures.
 