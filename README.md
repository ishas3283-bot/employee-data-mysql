# HR Analytics using MySQL
### Project Title/ Headline:
This project analyses the overall movement of workforce in and out from the company. This raw dataset has turned and processed through various queries with the help of quick formulas to extract the meaningful insights and business-related decisions. 
### Objective
Here are the objectives that help data to extract various insights and also:
1. Extract data from Kaggle
2. Analyze employee data using SQL.
3. Perform data cleaning to improve data quality.
4. Explore workforce distribution across departments.
5. Identify salary and experience trends.
6. Generate business insights to support decision-making.
### Dataset Information
The dataset is downloaded from Kaggle in common separated values (csv) files.
- Rows : 25
- Columns: 3000
- Dataset Name: employee.csv
- Database use: employee 
### Database Schema
The database includes the following fields:
1. Employee ID
2. First Name
3. Last Name
4. Performance score
5. Employee Rating score
6. Marital status
7. Title
8. Supervisor
9. Employee Email ID
10. Employee Type
11. Payzone
12. Employee status
13. Business unit
14. Termination
15. Department type
16. Division
17. Gender code
18. Location code
19. Race
20. Date of birth
21. Employee classification
22. Employee Status
23. Start Date(Date of Joining)
24. Exit Date(Date of resignation)
25. Job function description

[preview]([https://github.com/ishas3283-bot/employee-data-mysql/blob/main/Screenshots/schemas.png])
### Data Cleaning
Maintaining data in a consistent way is important if it is downloaded from the source. If a raw data once downloaded it contains many elements which are either blank, unknown and in inconsistent formatting. So to protect data from inconsistency before analysis:
- Checked whether if any value is null
- Identified and find duplicate records
- Alter space between with underscore in column
- Find missing values
- Update missing values with ‘unknown’. 
### Exploratory Data Analysis
Here are the questions solved with the help of MySQL, which are as follows:
1. Categorise the employee according to Employee Type
2. List all employee division of 'field operations' and 'Finance & Accounting'
3. Count of male and females in workforce
4. Workforce Categories on the basis of White and Black along with gender
5. List the mails of each Area Sales Manager and Data Architects along to confirm Termination Type
6. List the name of employee along with their IDs who started job from August 2022
7. List all the data analyst along with Exit Dates
8. How many data administrators are laborers?
9. Monthly count of candidate Start and Ending
10. Maximum people in job title  and minimum people in job title
11. who has completed highest tenure in company
12. Create a view of all active employees with their EmpID, FirstName, LastName, DepartmentType, and Title
  [preview](https://github.com/ishas3283-bot/employee-data-mysql/blob/main/Screenshots/eda_query.png)
14. Rank employees by StartDate within each Division.
15. Which department has the highest average employee rating?
16. Rank employees within each department based on their performance
17. Filter employees by Employee Type = 'Contract' and shows their supervision and business unit
18. Create a list of long tenure and short tenure
  [preview](https://github.com/ishas3283-bot/employee-data-mysql/blob/main/Screenshots/eda_queries2.png)
19. Monthly hiring process in 2022
### Business Insights
Here are some of the observations extracted while preparing the above mentioned Exploratory Data Analysis:
1. The highest employment type in an organisation is Full time which recorded 1038 workforce out of total 3000 employees.
2. Females employees is recorded highest in an organisation
3. The majority of employees belongs to Production Technician I
4. Maximum hiring is done in November 2022 which accounts for 65 candidates amongst other months.
5. Micah Douglas has completed maximum days in a company. 
### SQL Concepts Used in this project
1. Windows
2. Common Table Expressions
3. Case
4. View
5. Where
6. Group by
7. Having
8. Select
9. Aggregate functions
10. SQL Clauses
11. Order by
12. String to date
13. Concat
14. datediff
### Project Files 
1. ‘Schema.sql’ - Database creation
2. ‘Data Cleaning.sql’ - Data cleaning queries
3. ‘Employee_Data CSV - Data imported in MySQL after the creation of database
4. ‘Eda_queries.sql’ - SQL queries for EDA
## Thank you for visiting this project. Feel free to connect or contribute! contact: ishas3283@gmail.com
