/*
EC_IT143_W4.2_MyFC_s4_xx.sql
Step 4: Turn the ad hoc SQL query into a view.

The view is stored in EC_IT143_DA (the assignment's working database)
but reads from MyFC.dbo.tblPlayerFact using a fully qualified name.

Naming: v_MyFC_TotalSalaryByMonth
The v_ prefix marks it as a view.
*/

USE EC_IT143_DA;
GO

CREATE OR ALTER VIEW dbo.v_MyFC_TotalSalaryByMonth AS
SELECT
    f.as_of_date        AS Month,
    SUM(f.mtd_salary)   AS TotalSalary
FROM MyFC.dbo.tblPlayerFact f
GROUP BY f.as_of_date;
GO

-- Test the view
SELECT * FROM dbo.v_MyFC_TotalSalaryByMonth;