/*
EC_IT143_W4.2_MyFC_s3_xx.sql
Step 3: Create an ad hoc SQL query.

This is my first attempt at answering the question:
"What is the total player salary per month in the MyFC dataset?"

I read from tblPlayerFact, group by the month (as_of_date),
and sum the monthly salary.
*/

USE MyFC;
GO

SELECT
    f.as_of_date        AS Month,
    SUM(f.mtd_salary)   AS TotalSalary
FROM tblPlayerFact f
GROUP BY f.as_of_date;