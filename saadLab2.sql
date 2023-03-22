create database universityDB;
use universityDB;
create table students(s_id varchar(8), s_name varchar(20), s_address varchar(50), s_phoneNo varchar(11), s_email varchar (20), s_marks float(5,2));

describe students;

insert into students values('cs211246', 'Saad', 'Karachi', '03122547890', 'abc@email.com', 94.52),
('cs211246', 'Ali', 'Lahore', '03122551890', 'def@email.com', 74.52),
('cs211246', 'Usman', 'Islamabad', '03122547890', 'ghi@email.com', 35.52),
('cs211254', 'Ali', 'Quetta', '03122547890', 'jkl@email.com', 91.52),
('cs211248', 'Ali', 'Multan', '03122581890', 'mno@email.com', 37.51),
('cs211242', 'Ali', 'Sukkur', '03122547890', 'pqr@email.com', 93.72),
('cs211264', 'Ali', 'Kharain', '03144547890', 'stu@email.com', 94.52),
('cs211236', 'Rahim', 'Gujrat', '03126947890', 'vwx@email.com', 98.52),
('cs211294', 'Saad', 'Abottabd', '03122547220', 'yza@email.com', 98.52),
('cs211025', 'Usman', 'Karachi', '03122547815', 'bba@email.com', 98.52);

select * from students;
select distinct s_id, s_address from students;
select distinct s_name from students;
select distinct s_marks from students;

select distinct s_id as roll_no, s_phoneNo as contact from students;
select * from students as uniStud;

select * from students
where s_id = 'cs211246';

select (s_marks) + 50 from students;

select * from students
where s_id  = 'cs211246'; 

select * from students
where s_marks  != 100; 

select * from students
where s_marks = 98.52 and s_name like 'u%'; 

select * from students
where s_name  = 'a' or s_marks = 100; 

select * from students
where s_name in ('saad', 'asfand', 'usman'); 

select * from students
where s_marks in (20,74.52,40, 94.52) and s_name like 'a%'; 

select * from students
where s_name like 'a%' and s_address in ('karachi','islamabad', 'newyork') or s_marks between 10 and 80; 

select * from students
where s_name not like 'a%' and s_marks between 50 and 80 or s_phoneNo in ('03122547830','031225472890'); 

select * from students limit 3;
select * from students limit 1,5;
select * from students limit 0,6;

select * from students order by s_id asc;
select * from students 
where s_name not like 'z%' and s_marks between 25 and 80 order by s_id desc; 


