-- Exploratory Data Analyse 
-- 1. Categorise the employee according to Employee Type
use employee;
select EmployeeType, count(*)
from data
group by EmployeeType;
-- 2. list all employee division of 'field operations' and 'Finance & Accounting'
select Division, count(*)
from data
where Division in ('Finance & Accounting','Field Operations')
group by Division;
-- 3. count of male and females in workforce
select GenderCode, count(*)
from data
group by GenderCode;
-- 4. Workforce Categorise on the basis of White and Black along with gender 
select RaceDesc, GenderCode, count(*)
from data
where RaceDesc in('White', 'Black')
group by RaceDesc, GenderCode
limit 2;
-- 5. List the mails of each Area Sales Manager and Data Architects along to confirm Termination Type
select distinct title, Division,TerminationType
from data
where title in('Area Sales Manager','Data Architects');
-- 6. list the name of employee along with their IDs who started job from August 2022
select EmpID, concat(FirstName, ' ',LastName) as Employees
from data
where year(str_to_date(StartDate,'%d-%b-%Y')) = 2022
and month(str_to_date(StartDate, '%d-%b-%Y')) = 8;
-- 7. List all the data analyst along with Exit Dates
select Title, ExitDate 
from data
where Title = 'Data Analyst';
-- 8. How many data administrator are labourer?
SELECT Title, Count(JobFunctionDescription) as Count_of_Laboureres
from data
where JobFunctionDescription = 'Laborer'
and Title = 'Database Administrator'
group by Title;
-- 9. Monthly count of candidate Start and Ending
select concat(FirstName,' ', LastName) as Name, month(str_to_date(StartDate,'%d-%b-%Y')) as some, month(str_to_date(ExitDate,'%d-%b-%Y')) as dome
from data
group by Name, some,dome;
-- 10. maximum people and minimum people in job title
select Title, count(*) as Counting 
from data 
group by Title
order by Counting desc
limit 1;
select Title, count(*) as Counting
from data 
group by Title
order by Counting asc
limit 1;
-- 11. who has completed highest tenure in company
create view j as
select concat(FirstName,' ', LastName) as Name,
datediff(
str_to_date(ExitDate, '%d-%b-%Y'),
str_to_date(StartDate,'%d-%b-%Y'))
AS Date
from data
where ExitDate is not null and StartDate is not null;
select Name, Date 
from j
order by Date desc
limit 1;
-- 12. Create a view of all active employees with their EmpID, FirstName, LastName, DepartmentType, and TitLE
create view active_emp as
select EmpID, FirstName, LastName, DepartmentType, Title
from data
where EmployeeStatus = 'Active';
select EmpID, concat(FirstName, ' ', Lastname), DepartmentType, Title from active_emp;
-- 13. Rank employees by StartDate within each Division.
select concat(FirstName,' ', LastName) as Name, Division,
dense_rank() over(order by month(str_to_date(StartDate,'%d-%b-%Y'))) as Dating
from data;
-- 14. which department have the highest average employee rating?
create view t as
select DepartmentType, Current_Employee_Rating, concat(FirstName,' ', LastName) as Naming
from data
where Current_Employee_Rating > 4;
select DepartmentType, Current_Employee_Rating, Naming
from t
order by Naming asc;
-- 15. Rank employees within each department based on their performance 
select  concat(FirstName,' ', LastName) as Name, DepartmentType, 
dense_rank() over(partition by DepartmentType 
order by 
case performance_score
when 'Needs Improvement' then 1 
when 'Fully Meets' then 2
when 'PIP' then 3
else 4
end asc
) as ranking
from data;
-- 17. Filter employees by Employee Type = 'Contract' and shows their supervision and business unit
select concat(FirstName,' ',LastName) as Name, EmployeeType, Supervisor, BusinessUnit
from data 
where EmployeeType = 'Contract';
-- 18. Create long tenure and short tenure 
select concat(FirstName,' ',LastName) as Name, 
case
when datediff((str_to_date(ExitDate,'%d-%b-%Y')),
str_to_date(StartDate,'%d-%b-%Y')) > 500 then 'Long Tenure Period'
else 'Short Tenure'
end as Tenure
from data;
-- 19. Monthly hiring proces in 2022
select month(str_to_date(StartDate,'%d-%b-%Y')) AS month, count(EmpID) as Count_of_hiring
from data
where year(str_to_date(StartDate,'%d-%b-%Y')) = 2022
group by month
order by month asc;
