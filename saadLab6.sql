create database lab6_246;
use lab6_246;
create table product (prodID varchar(10), prodName varchar(100), prodCategory varchar(100), price int);
select * from product;

-- creating temporary table --
create temporary table product 
select prodID, prodName from product;
select * from product;
drop temporary table product;

-- cloning tables --
create table newProduct like product;
desc newProduct;
select * from newProduct;
create table newProd as 
select prodId, prodName from product;
desc newprod;
select * from newProd;

create table features (id int, name varchar(30));
create table twoCloned as
select product.prodID, product.prodName, features.name
from features join product;
desc twoCloned;
select * from twoCloned;

create database saadlab5;
use saadlab5;

create table course (
	c_id varchar(15), 
    name varchar(50),
    primary key (c_id)
);
describe course;

create table student (
	s_id varchar(15), 
    name varchar(50), 
    c_id varchar(15),
    primary key (s_id)
    -- foreign key (d_id) references department(d_id)
);
describe student;


insert into student values('cs1','usman', 'cs1'),('cs2', 'saad', 'cs2'),('cs3', 'rahim', 'cs2'),('cs4', 'danial', 'cs3');
insert into course values('cs123','DBS'),('cs223','DAA'),('cs323','DBSL'),('cs423', 'LA');
select * from student;
select * from course;
create table st_cr_clone as select student.s_id, student.name, course.c_id, course.name from student join course;


-- task
create database task1;
use task1;
create table studentInfo (std_name varchar(255), std_dept varchar(20), std_gpa float(4,2), std_grade enum('A', 'B', 'C', 'D', 'F'));
desc studentInfo;
insert into studentInfo values('usman', 'cs', 4.00, 'A'),('saad', 'cs', 3.88, 'A'), ('rahim', 'se', 3.58, 'B0');
select * from studentInfo;
-- 1
create temporary table studentinfo select std_name, std_dept, std_gpa from studentInfo;
desc studentInfo;
select * from studentInfo;
-- 2
select * from studentInfo where std_gpa > 3.0;
-- 3
create table studentClone like studentInfo;
desc studentClone;
-- 4
desc studentClone;
desc studentInfo;
-- 5
select * from studentClone;
-- 6
alter table studentClone drop std_name;
desc studentClone;


-- TASK 1
-- 1
create table StudentCourses (id int,name varchar(255), grade enum('A', 'B', 'C', 'D', 'F'));
desc StudentCourses;
alter table StudentCourses add gpa float(4,2);
insert into StudentCourses values(1,'usman', 'A',4.0),(2,'saad', 'B',3.88),(3,'Rahim', 'A',3.64);
-- 3
select cast(gpa as unsigned) from StudentCourses;


