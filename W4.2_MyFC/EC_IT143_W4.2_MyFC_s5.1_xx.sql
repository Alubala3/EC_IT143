/*
EC_IT143_W4.2_MyFC_s5.1_xx.sql
Step 5.1: Turn the view into a table (quick version).

SELECT ... INTO creates a brand new table from the view.
The table is stored in EC_IT143_DA alongside the view.

Naming: t_MyFC_TotalSalaryByMonth
The t_ prefix marks it as a table.
*/

USE EC_IT143_DA;
GO

-- Drop if it already exists
DROP TABLE IF EXISTS dbo.t_MyFC_TotalSalaryByMonth;
GO

-- Create the table from the view
SELECT *
INTO dbo.t_MyFC_TotalSalaryByMonth
FROM dbo.v_MyFC_TotalSalaryByMonth;
GO

-- Test the table
SELECT * FROM dbo.t_MyFC_TotalSalaryByMonth;