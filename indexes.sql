------------------------------------
-- Indexes 
-- PK,FK -> clustered indexes
-- Columns -> non-clustered indexes
------------------------------------

use northwind;
select * from orders where orderID = 10400;
select * from orders;
select * from orderDetails where orderdetailid = 518;

create index ind1 on orders(OrderID);
desc orders;

show indexes from tt;
show indexes from orderdetails;

create database myindex;
use myindex;

create table tt (id int primary key, name varchar(255), city varchar(255), unique index(id));
insert into tt values(1, 'saad', 'karachi');

alter table tt add constraint ui unique index(name);
select * from tt;
drop index ui on tt;

-------------------------------------
-- TCL: transaction Control Language
-------------------------------------
create table students(id int,fname varchar(50), lname varchar(50), deptid int);
set autocommit = 0;

INSERT INTO students (id, fname, lname, deptid) VALUES (1, 'Jane', 'Wilson', 4);
INSERT INTO students (id, fname, lname, deptid) VALUES (2, 'Bruce', 'Lee', 2);
INSERT INTO students (id, fname, lname, deptid) VALUES (3,'Mary', 'Wilson', 2);
INSERT INTO students (id, fname, lname, deptid) VALUES (4,'Jerry', 'Lee', 4);
INSERT INTO students (id, fname, lname, deptid) VALUES (5,'Mark', 'Lee', 4);

update students set dept_id  = 5 where id = 2;
commit;

DELETE FROM students WHERE id = 3;
DELETE FROM students WHERE id = 5;



INSERT INTO students (id, fname, lname, deptid) VALUES (6,'Gary', 'Lee', 4);
savepoint A;
DELETE FROM students WHERE id = 5;
savepoint B;
DELETE FROM students WHERE id = 1;
rollback to B;


select * from students;


