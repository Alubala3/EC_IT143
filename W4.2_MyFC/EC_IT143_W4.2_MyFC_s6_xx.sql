/*
EC_IT143_W4.2_MyFC_s6_xx.sql
Step 6: Load the table from the view using an ad hoc SQL script.

TRUNCATE empties the table.
INSERT refills it from the view.

Naming symmetry: v_MyFC_TotalSalaryByMonth feeds
                 t_MyFC_TotalSalaryByMonth
*/

USE EC_IT143_DA;
GO

-- Empty the table
TRUNCATE TABLE dbo.t_MyFC_TotalSalaryByMonth;
GO

-- Refill it from the view
INSERT INTO dbo.t_MyFC_TotalSalaryByMonth (Month, TotalSalary)
SELECT Month, TotalSalary
FROM dbo.v_MyFC_TotalSalaryByMonth;
GO

-- Test the reloaded table
SELECT * FROM dbo.t_MyFC_TotalSalaryByMonth;