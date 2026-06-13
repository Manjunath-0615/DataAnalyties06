create database join_sql;
use join_sql;
create table customers2(
cust_name varchar(20),
cust_id int,
address varchar(25),
city varchar(20),
portal_code varchar(30),
country varchar(25),
primary key (cust_id));
create table orders2(
order_id int,
cust_id int,
employee_id int,
order_date datetime,
ship_id int,
primary key(order_id));
INSERT INTO customers2
VALUES ('Ramesh', 101, '12 MG Road', 'Bangalore', '560001', 'India');
INSERT INTO customers2
VALUES ('Suresh', 102, '45 Park Street', 'Hyderabad', '500001', 'India');
INSERT INTO customers2
VALUES ('Priya', 103, '78 Lake View', 'Chennai', '600001', 'India');
INSERT INTO customers2
VALUES ('Anjali', 104, '23 Gandhi Nagar', 'Mumbai', '400001', 'India');
INSERT INTO customers2
VALUES ('Kiran', 105, '56 Station Road', 'Pune', '411001', 'India');
select * from customers2;
INSERT INTO orders2
VALUES (1001, 101, 201, '2026-06-01 10:30:00', 301);
INSERT INTO orders2
VALUES (1002, 102, 202, '2026-06-02 11:15:00', 302);
INSERT INTO orders2
VALUES (1003, 103, 203, '2026-06-03 09:45:00', 303);
INSERT INTO orders2
VALUES (1004, 104, 204, '2026-06-04 14:20:00', 304);
INSERT INTO orders2
VALUES (1005, 105, 205, '2026-06-05 16:10:00', 305);
select * from orders2;
select c.cust_id,c.cust_name,c.country,o.order_id,o.order_date from customers2 c left join orders2 o on c.cust_id=o.cust_id;
select c.cust_id,c.cust_name,c.country,o.order_id,o.order_date from customers2 c right join orders2 o on c.cust_id=o.cust_id;
select c.cust_id,c.cust_name,c.country,o.order_id,o.order_date from customers2 c inner join orders2 o on c.cust_id=o.cust_id;
select c.cust_id,c.cust_name,c.country,o.order_id,o.order_date from customers2 c  full outer join orders2 o on c.cust_id=o.cust_id;
select c.cust_id,c.cust_name,c.country,o.order_id,o.order_date from customers2 c  cross join orders2 o;
SELECT c.cust_id, c.cust_name, o.order_id
FROM customers2 c
LEFT outer JOIN orders2 o
ON c.cust_id = o.cust_id
UNION
SELECT c.cust_id, c.cust_name, o.order_id
FROM customers2 c
RIGHT outer JOIN orders2 o
ON c.cust_id = o.cust_id;
create table employee(
emp_id int,
emp_name varchar(20),
manager_id int);
insert into employee values(1,'ramesh',NULL);
insert into employee values(2,'raVI',1);
insert into employee values(3,'raJU',1);
insert into employee values(4,'ANIL',2);
select * from employee;
SELECT 
    e.emp_name AS Employee,
    m.emp_name AS Manager
FROM employee e
LEFT JOIN employee m
ON e.manager_id = m.emp_id;
CREATE DATABASE company;
USE company;
#command prompt
cd "C:\Program Files\MySQL\MySQL Server 8.0\bin"
mqsql -u root -p
use company;
show tables;
select count(PaymentTier) from employee;
# import th csv file
CREATE DATABASE company;
USE company;
click the company database and right click and go to table data import option after click next button after select * from employee;
use company;
select * from employee;
#string functions
create database join_sql1;
use join_sql1;
create table customers3(
cust_name varchar(20),
cust_id int,
address varchar(25),
city varchar(20),
portal_code varchar(30),
country varchar(25),
primary key (cust_id));
INSERT INTO customers3
VALUES ('Ramesh', 101, '12 MG Road', 'Bangalore', '560001', 'India');
INSERT INTO customers3
VALUES ('Suresh', 102, '45 Park Street', 'Hyderabad', '500001', 'India');
INSERT INTO customers3
VALUES ('Priya', 103, '78 Lake View', 'Chennai', '600001', 'India');
select concat(cust_name,cust_id) from customers3;
select trim(concat(cust_name,cust_id)) from customers3;
select substr("SQL tuoral" ,2,5) AS extractstring;
select cust_name,upper(cust_name) from customers3;
select character_length("hello world")as ch;
select character_length(cust_name) from customers3;
select mid("hello world",2,5) from customers3;
select mid(cust_name,1,4) from customers3;
##aggredate functions
select count(cust_id) from customers3;
SELECT country, COUNT(*) AS total_employees
FROM customers3
GROUP BY country;
select min(cust_id) from customers3;
select max(cust_id) from customers3;
select avg(cust_id) from customers3;
