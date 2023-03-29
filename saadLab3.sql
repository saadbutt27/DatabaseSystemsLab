create database saadbuttdb;
use saadbuttdb;
create table t01(emp_id int, emp_name varchar(20),emp_dept varchar(30), emp_salary float(6,2));
insert into t01 values
(1,'saad','production', 7000.00),
(2,'usman','production', 7000.00),
(3,'saud','production', 7000.00),
(4,'rahim','finance', 6500.00),
(5,'danial','finance', 6500),
(6,'shoaib','finance', 6500),
(7,'adina','hr', 6000),
(8,'ayesha','hr', 6000),
(9,'anusha','hr', 6000),
(10,'divya','hr', 6000);

alter table t01 add contact varchar(11) first;
alter table t01 add city varchar(20) after emp_salary;
describe t01;
update t01 set join_date = '2021-5-4';

 ALTER TABLE t01 DROP contact;
 
SELECT UPPER(emp_name) as emp_name from t01; 
SELECT LOWER(emp_name) as emp_name from t01;
SELECT LENGTH(emp_name) as emp_name from t01; 
SELECT CONCAT(emp_name, ' from ', emp_dept) as employee from t01; 
SELECT UPPER(CONCAT(emp_name, ' from ', emp_dept)) as employee from t01; 
SELECT CONCAT(UPPER(emp_name), ' from ', UPPER(emp_dept)) as employee from t01; 

SELECT replace(emp_dept,'production', 'it') as emp_dept from t01;

SELECT ABS(emp_salary) as absolute_salary from t01; 
SELECT FLOOR(emp_salary) as floored_salary from t01; 
SELECT CEIL(emp_salary) as ceiled_salary from t01; 

SELECT YEAR(join_date) as join_year from t01;
SELECT MONTH(join_date) as join_month from t01;
SELECT DAY(join_date) as join_date from t01;
SELECT CURDATE() as date from t01;
SELECT TIMESTAMPDIFF(day, join_date, curdate()) as join_year from t01;
SELECT TIMESTAMPDIFF(YEAR, '2002-7-27', curdate()) as join_year from t01;

SELECT AVG(emp_salary) as AVERAGE_SALARY from t01;
SELECT SUM(emp_salary) as TOTAL_SUM from t01;
SELECT MAX(emp_salary) as MAX_SALARY from t01;
SELECT MIN(emp_salary) as MIN_SALARY from t01;
SELECT COUNT(DISTINCT emp_dept) as TOTAL_DISTINCT_RECORDS from t01;
SELECT COUNT(emp_salary) as TOTAL_RECORDS from t01;

SELECT emp_dept, MAX(emp_salary) from t01
GROUP BY emp_dept HAVING MAX(emp_salary) > 6000; 

SELECT emp_dept, MIN(emp_salary) from t01
GROUP BY emp_dept; 

SELECT emp_dept, SUM(emp_salary) from t01
GROUP BY emp_dept; 

SELECT emp_dept, AVG(emp_salary) from t01
GROUP BY emp_dept; 



SELECT * from t01;
