CREATE DATABASE employee;

USE employee;

RENAME TABLE `wa_fn-usec_-hr-employee-attrition` TO employee;

SELECT *
FROM employee;

DESCRIBE employee;

SET SQL_safe_updates = 0;

UPDATE employee
SET age_group = CASE
                   WHEN Age between 18 and 25 THEN "18-25"
                   WHEN Age between 26 and 35 THEN "26-35"
                   WHEN Age between 36 and 45 THEN "36-45"
                   WHEN Age between 46 and 55 THEN "46-55"
                   WHEN Age between 56 and 60 THEN "56-60"
				   ELSE NULL    END;

ALTER TABLE employee
ADD COLUMN age_group varchar(20);

ALTER TABLE employee
ADD COLUMN employeeNumber INT AFTER DistanceFromHome;

UPDATE employee
SET employeeNumber = 1;

ALTER TABLE employee
ADD COLUMN OverTime_Counts INT AFTER OverTime;

UPDATE employee
SET OverTime_Counts = CASE
                        WHEN Overtime = "Yes" THEN 1
                        WHEN Overtime = "No" THEN 0
                        ELSE NULL END;
                        
SET SQL_safe_updates = 1;

                        
ALTER TABLE employee
CHANGE `Attrition Counts` Attrition_Counts INT;

#Attrition by Age group
SELECT Age_group, COUNT(Attrition) AS turn_over
FROM employee
WHERE Attrition = "Yes"
GROUP BY Age_group
ORDER BY turn_over DESC;

# Promotion vs Attrition
SELECT DISTINCT YearsSinceLastPromotion, COUNT(Attrition) AS turn_over
FROM employee
WHERE Attrition = "Yes"
GROUP BY YearsSinceLastPromotion
ORDER BY turn_over DESC;

#Job satisfaction by Attrition
SELECT DISTINCT JobSatisfaction, COUNT(Attrition) AS turn_over
FROM employee
WHERE Attrition = "Yes"
GROUP BY JobSatisfaction
ORDER BY turn_over DESC;

#department, num_of_employees, turn over and turn over rate
SELECT department, 
COUNT(employeeNumber) AS numb_of_employees,
SUM(Attrition_Counts) AS turn_over, ROUND((SUM(Attrition_Counts)/COUNT(employeeNumber)) * 100, 2) AS turn_over_rate
FROM employee
GROUP BY department
ORDER BY turn_over_rate DESC;

#Job Role by Overtime and Attrition
SELECT JobRole, 
COUNT(employeeNumber) AS numb_of_employees,
SUM(Attrition_Counts) AS turn_over, 
ROUND((SUM(Attrition_Counts)/COUNT(employeeNumber)) * 100, 2) AS turn_over_rate,
SUM(OverTime_counts) AS over_time, ROUND((SUM(OverTime_counts)/COUNT(employeeNumber)) * 100, 2) AS overtime_rate,
ROUND(AVG(monthlyincome),0) AS avg_monthly_income#, AVG(EnvironmentSatisfaction) avg_enviromentalSatisfaction
FROM employee
GROUP BY JobRole
ORDER BY overtime_rate DESC;   

#Department ,JobRole by attrition and average_income
SELECT DISTINCT Department,
JobRole, 
SUM(Attrition_Counts) AS turn_over, 
ROUND(AVG(MonthlyIncome),0) AS avg_monthly_income
FROM employee
GROUP BY Department,JobRole
ORDER BY avg_monthly_income DESC;

#Number of employee in each JobRole
SELECT DISTINCT Jobrole, COUNT(employeeNumber) AS numb_of_employee
FROM employee
GROUP BY Jobrole
ORDER BY numb_of_employee DESC;

# Gender vs Attrition
SELECT Gender, COUNT(employeeNumber) AS num_of_employees, SUM(Attrition_Counts) AS turn_over, 
ROUND((SUM(Attrition_Counts)/COUNT(employeeNumber)) * 100, 2) AS turn_over_rate
FROM employee
GROUP BY Gender;

#(1 'Below College' 2 'College' 3 'Bachelor' 4 'Master' 5 'Doctor')

SELECT Education, COUNT(employeeNumber) AS num_of_employees,
ROUND(AVG(monthlyincome),0) AS avg_monthly_income,
SUM(Attrition_Counts) AS turn_over, ROUND((SUM(Attrition_Counts)/COUNT(employeeNumber)) * 100, 2) AS turn_over_rate
FROM employee
GROUP BY Education
ORDER BY Education DESC;

#Department, Business Travel by turnoverrate
SELECT department,BusinessTravel, ROUND((SUM(Attrition_Counts)/COUNT(employeeNumber)) * 100, 2) AS turn_over_rate
FROM employee
GROUP BY department,BusinessTravel
ORDER BY turn_over_rate DESC;

SELECT Jobrole, COUNT(BusinessTravel) AS frequent_traveleers
FROM employee
WHERE BusinessTravel = 'Travel_Frequently'
GROUP BY Jobrole
ORDER BY frequent_traveleers DESC;


SELECT Jobrole, COUNT(BusinessTravel) AS Rarely_traveleers
FROM employee
WHERE BusinessTravel = 'Travel_Rarely'
GROUP BY Jobrole
ORDER BY Rarely_traveleers DESC;

SELECT Jobrole, COUNT(BusinessTravel) AS non_traveleers
FROM employee
WHERE BusinessTravel = 'Non-Travel'
GROUP BY Jobrole
ORDER BY non_traveleers DESC;



