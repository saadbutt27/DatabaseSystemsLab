create database lab01;
use lab01;

create table t1(rollNo int(10), name varchar(20), marks float(4,2));
show tables;

alter table t1 change regNo regsNo int, change name stdName varchar(20), change marks stdMarks float(4,2) ;
alter table t1 change stdName stdName varchar(20);
alter table students change regsNo regNo int;

alter table t1 modify regsNo int, MODIFY stdMarks int;
alter table t1  add department varchar(20), add class varchar(10);

alter table t1 drop email;

Rename table t1 to students;

-- DML Commands --
insert into students (regNo, stdName, stdMarks, department, class)
values('2', 'Usman', 12.64, 'CS', '4C');
insert into students values('3', 'Rahim', 11.42, 'CS', '4C'), ('4', 'Danial', 9.65, 'CS', '4C');
update students set stdMarks = '15.00'
where regNo = 1;
DELETE FROM students WHERE stdName = 'Shabbir';

select * from students;
select regNo, stdName from students;
describe students;

create table employee(id int(10), name varchar(20), email varchar(15), address varchar(30));
show tables;
describe employee;