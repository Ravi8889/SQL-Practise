CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');

CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT(10),
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '16-02-20'),
		(002, 3000, '16-06-11'),
		(003, 4000, '16-02-20'),
		(001, 4500, '16-02-20'),
		(002, 3500, '16-06-11');
CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2016-02-20 00:00:00'),
 (002, 'Executive', '2016-06-11 00:00:00'),
 (008, 'Executive', '2016-06-11 00:00:00'),
 (005, 'Manager', '2016-06-11 00:00:00'),
 (004, 'Asst. Manager', '2016-06-11 00:00:00'),
 (007, 'Executive', '2016-06-11 00:00:00'),
 (006, 'Lead', '2016-06-11 00:00:00'),
 (003, 'Lead', '2016-06-11 00:00:00');
 drop table country;
 drop table rk1;
 drop table sales;
 select * from title;
 select *  from employee;
 drop table employee;
 select * from employee;
 select * from jobs_sal;
 drop table jobs_sal;
 show tables;
 select * from bonus;
 select * from title;
 select * from worker;
 #### concat function###
 select first_name, last_name ,concat(first_name, ' ' ,last_name)as FullName from worker;
 select *  from title;
 select * from worker;
 ### reverse()
 select first_name , reverse(first_name)as reversed_FName from worker;
 ## instr()
 select * from worker;
 ## instr() ==> the instr() returns the postion of the text in the data  of the sepecifided column.
 select concat(first_name, ' ', last_name) as full_name,instr("Vishal", "a")  from worker;
 select instr("konda ravi kiran","i") ;
 select instr("Sai dumb","d");
 select  "kondaRaviKiran" as name1,length("KondaRaviKiran")as my_name;
 select char_length("KOondaRavikiran")as rk;
 ### left() ## left () functions
 select left("kondaRavikiran",8);
 select Right("Data Scientist Ravi kiran",10); 
 select Right("ravikiran Rk",6);
 select length("Ravikiran");
 select lower("RAVIKIRAN");
 SELECT upper('ravikiran');
 select Ltrim("  Ravikiran");
 select rtrim("RaviKiran    ..   ");
 select trim(leading from "    KONDA RAVI KIRAN");
 select trim(trailing from "kondaravi   ");
 ### find in set() this function returns the position of string in a comma seprated list of strings
 find_in_set("needle","laystack");
 select format(125489.36582,2);
 select format(1245698.98560,1);
 ### substring
 select substring(first_name,1,3) from worker; # feild_name,postion, length of the string.
 select * from worker;
 select substring(last_name,3,3) from worker;
 