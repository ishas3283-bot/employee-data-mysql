-- Here we will perform Data Cleaning (if any)
-- Find blank or null blanks
select* from data 
where ExitDate is NULL
or ExitDate = ' ';
-- find duplicate records
select EmpID, FirstName, LastName, count(*)
from data
group by EmpID, FirstName, LastName
having count(*)>1;
-- find missing values
select *
from data
where ExitDate = '';
-- update missing values with 'Unknown'
set sql_safe_updates = 0;
update data
set ExitDate = 'Unknown'
where ExitDate = '';
-- change column name from gap to underscore
alter table data
change `Current Employee Rating` Current_Employee_Rating int;