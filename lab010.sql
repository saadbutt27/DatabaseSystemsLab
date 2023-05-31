use northwind;
select * from employees;
delimiter //
create procedure FirstProcedure ()
begin 
select * from employees where EmployeeID < 5;
end //
delimiter ;

delimiter //
create procedure SecondProcedure ()
begin 
SELECT 
    *
FROM
    employees
WHERE
    EmployeeID < 5
        AND FirstName IN ('Andrew' , 'Janet', 'Margaret');
end //
delimiter ;

delimiter //
create procedure ThirdProcedure ()
begin 
	declare a int default 3;
    
    select * from employees where employeeId = a;

end //
delimiter ;

delimiter //
create procedure FourthProcedure ()
begin 
	declare b varchar(20) default 'Fuller';
    
    select * from employees where lastName = b;

end //
delimiter ;

delimiter //
create procedure FifthProcedure ()
begin 
	DECLARE total_employees int(20) DEFAULT 0;
SET total_employees = 10;
SELECT 
    COUNT(*)
INTO total_employees FROM
    employees;
    select total_employees;

end //
delimiter ;

delimiter //
create procedure SixthProcedure ()
begin 
	declare a int;
    set a = 7;
    
    select * from employees where employeeId < a;

end //
delimiter ;

delimiter //
create procedure SeventhProcedure (in A1 varchar(50))
begin 
	select * from employees where FirstName = A1;

end //
delimiter ;

delimiter //
create procedure EighthProcedure (in a decimal(10,0))
begin 
	select * from products where price = a;

end //
delimiter ;

delimiter //
create procedure NinthProcedure (out v1 int)
begin 
	select count(*) into v1 from employees;

end //
delimiter ;

delimiter //
create procedure TenthProcedure (out v2 int, in v1 int)
begin 
	select count(EmployeeID) into v2 from employees where EmployeeID > v1;

end //
delimiter ;

delimiter //
create procedure EleventhProcedure (inout v2 int)
begin 
	select count(EmployeeID) into v2 from employees where EmployeeID > 5;

end //
delimiter ;

delimiter //
create procedure TwelveProcedure (inout val int)
begin 
	select count(EmployeeID) into val from employees where EmployeeID > val;

end //
delimiter ;

delimiter //
create procedure ThirteenProcedure (inout val int)
begin 
	set val = val+5;

end //
delimiter ;

use studdata;
select * from studentcour;

delimiter // 
create procedure Marks_Status(in marks int, out remarks varchar(255))
begin
	if marks > 60 then 
		set remarks = 'Passed and Good Marks';
	elseif marks > 50 and marks < 60 then 
		set remarks = 'Average';
	else set remarks = 'Failed';
    end if;
end //
delimiter ;

delimiter // 
create procedure Marks_Status_Case(in marks int, out remarks varchar(255))
begin
	case marks
		when marks > 60 then set remarks = 'Passed and Good Marks';
        when marks > 50 and marks < 60 then set remarks = 'Average';
        else set remarks = 'Failed';
	end case;
    
end //
delimiter ;

delimiter // 
create procedure Marks_Status_Single(inout marks int)
begin
	if marks > 60 then 
		select 'Passed and Good Marks';
	elseif marks > 50 and marks < 60 then 
		select 'Average';
	else select 'Failed';
    end if;
end //
delimiter ;





call FirstProcedure();
call SecondProcedure();
call ThirdProcedure();
call FourthProcedure();
call FifthProcedure ();
call SixthProcedure();
call SeventhProcedure('Andrew');
call EighthProcedure(97);
call NinthProcedure(@v1);
select @v1 as totalCount;

call TenthProcedure(@v2, 4);
select @v2 as conditionalTotalCount;

call EleventhProcedure(@v2);
select @v2 as conditionalTotalCount;

set @val = 5;
call TwelveProcedure(@val);
select @val as totalInOut;

set @val = 6;
call ThirteenProcedure(@val);
select @val as setVal;

SHOW PROCEDURE STATUS WHERE DB = 'northwind';

call Marks_Status(70, @statusOf);
select @statusOf;

call Marks_Status_Case(55, @statusOf);
select @statusOf;

set @marks = 55;
call Marks_Status_Single(@marks);
select @statusOf;


