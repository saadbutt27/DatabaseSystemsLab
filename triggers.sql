create database university;
use university;
create table student(s_id int primary key auto_increment, s_name varchar(50), s_marks int);
insert into student (s_name, s_marks) values
('saad', 75),('usman', 85),('daniyal',65),('rahim', 70),( 'rehmat', 62);
select * from student;

create table student_logs(s_id int primary key, s_name varchar(50), s_marks int);

delimiter //
create trigger before_delete_trigger before delete 
on student
for each row 	
begin
	insert into student_logs (s_id, s_name, s_marks) values (old.s_id, old.s_name, old.s_marks); 
end //
delimiter ;
drop trigger university.before_delete_trigger;
select * from student;
select * from student_logs;
delete from student where s_id = 3;

-- how to use user function in triggers, how to use curdate function in triggers

delimiter //
create trigger after_insert_trigger after insert 
on student
for each row 	
begin
	insert into student_logs (s_id, s_name, s_marks) values (new.s_id, new.s_name, new.s_marks); 
end //
delimiter ;

insert into student(s_name, s_marks) values ('meerab', 90);
select * from student;
select * from student_logs;

delimiter //
create trigger before_update_trigger before update 
on student
for each row
begin
	insert into student_logs (s_id, s_name, s_marks) values (old.s_id, old.s_name, old.s_marks); 
end //
delimiter ;

update student set s_marks = 89 where s_id = 5; 
select * from student;
select * from student_logs;

select s_id as StudentID, s_name as Student_Name, (
	case
    when s_marks > 50 then 'Passed'
    else 'Failed'
    end
) as Status from student;
insert into student (s_name,s_marks) values ('maya', 45); 