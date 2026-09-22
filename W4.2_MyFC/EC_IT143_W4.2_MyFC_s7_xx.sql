/*
EC_IT143_W4.2_MyFC_s7_xx.sql
Step 7: Turn the ad hoc SQL script into a stored procedure.

The procedure wraps the Step 6 load script (TRUNCATE + INSERT)
and gives it a name: sp_load_t_MyFC_TotalSalaryByMonth.

Now the table can be refreshed with one line:
    EXEC dbo.sp_load_t_MyFC_TotalSalaryByMonth;
*/

USE EC_IT143_DA;
GO

CREATE OR ALTER PROCEDURE dbo.sp_load_t_MyFC_TotalSalaryByMonth
AS
BEGIN
    SET NOCOUNT ON;

    -- Empty the table
    TRUNCATE TABLE dbo.t_MyFC_TotalSalaryByMonth;

    -- Refill it from the view
    INSERT INTO dbo.t_MyFC_TotalSalaryByMonth (Month, TotalSalary)
    SELECT Month, TotalSalary
    FROM dbo.v_MyFC_TotalSalaryByMonth;
END;
GO