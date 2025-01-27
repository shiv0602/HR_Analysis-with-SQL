Create table hr_analysis
(
Attrition INT,
Business_Travel varchar(100),
CF_age_band varchar(50),
CF_attrition_label varchar(50),
Department varchar(50),
Education_Field varchar(50),
emp_no varchar(50),
Employee_Number int,
Gender varchar(50),
Job_Role varchar(50),
Marital_Status varchar(50),
Over_Time varchar(50),
Over18 varchar(10),
Training_Times_Last_Year int,
X int,
Y int,
Age int,
CF_current_Employee int,
Daily_Rate int,
Distance_From_Home int,
Education varchar(100),
Employee_Count int,
Environment_Satisfaction int,
Hourly_Rate	int,
Job_Involvement int,
Job_Level int,
Job_Satisfaction int,
Monthly_Income int,
Monthly_Rate int,
Num_Companies_Worked int,
Percent_Salary_Hike int,
Performance_Rating int,
Relationship_Satisfaction int,
Standard_Hours int,
Stock_Option_Level int,
Total_Working_Years int,
Work_Life_Balance int,
Years_At_Company int,
Years_In_Current_Role int,
Years_Since_Last_Promotion int,
Years_With_Curr_Manager int)

select * from hr_analysis

1)Total Employee : The sum of total employee from hr_analysis.
select sum(employee_count) from hr_analysis


2)Total attrition : The sum of total attrition from hr_analysis
select sum(attrition) from hr_analysis


3)Attrition Rate: The sum of Total Employee By division By Total Attrition from HR Dashboard
select sum(employee_count)/sum(attrition) from hr_analysis



4)Active Employee: The sum of Total Employee By subtraction By Total Attrition from HR Dashboard
select sum(employee_count)-sum(attrition) from hr_analysis

5)Average Age : The Average Age from HR DashBoard
select avg(Age) from hr_analysis

6)Attrition Count By Department: Create Pie Chat Display the Attrition Count By Department from HR DashBoard
select Department,sum(attrition) from hr_analysis group by Department order by sum(attrition) desc



select * from hr_analysis
7)Job_Role By Total Employee: create Table Find the Job Role By Rate By Total Employee
select Job_Role,Sum(Employee_Count) from hr_analysis group by Job_Role order by Sum(Employee_Count) desc

8) Total Employee By Education: Create Stacked Columns Chat Find The Total Employee By Education From HR Dashboard
select Education_Field,Sum(Employee_Count) from hr_analysis group by Education_Field order by Sum(Employee_Count) desc

9) Total Employee By Age Group: Create Stacked Columns Chat Find the Total Employee By Age Group From HR Dashboard
select CF_age_band,Sum(Employee_Count) from hr_analysis group by CF_age_band order by Sum(Employee_Count) desc

10) Job_Role By Month_Income By Gender: Create Line clustered Columns Chat Find the Job Role By Month Income By Gender
select Job_Role,Gender,sum(Monthly_income)from hr_analysis group by Job_Role,Gender order by sum(Monthly_income) desc





