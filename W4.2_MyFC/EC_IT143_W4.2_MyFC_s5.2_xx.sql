/*
EC_IT143_W4.2_MyFC_s5.2_xx.sql
Step 5.2: Refine the table architecture.

Rebuild t_MyFC_TotalSalaryByMonth with:
  - Explicit data types (VARCHAR for month, FLOAT for salary)
  - NOT NULL constraint on Month
  - Primary key on Month (each month appears once)

This makes the table durable and query-safe.
*/

USE EC_IT143_DA;
GO

-- Drop the quick version
DROP TABLE IF EXISTS dbo.t_MyFC_TotalSalaryByMonth;
GO

-- Rebuild with proper structure
CREATE TABLE dbo.t_MyFC_TotalSalaryByMonth (
    Month        VARCHAR(20) NOT NULL,
    TotalSalary  FLOAT       NULL,
    CONSTRAINT PK_t_MyFC_TotalSalaryByMonth PRIMARY KEY (Month)
);
GO

-- Test the structure (empty for now)
SELECT * FROM dbo.t_MyFC_TotalSalaryByMonth;