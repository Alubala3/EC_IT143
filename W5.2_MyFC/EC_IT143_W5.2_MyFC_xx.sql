/*
EC_IT143_W5.2_MyFC_xx.sql
Step 1: Start with a question.
Community: Soccer Fans (MyFC)
Table: dbo.t_MyFC_TotalSalaryByMonth (Month, TotalSalary)

Questions & Answers:
  Q1 (Ximena Gomora Flores) - Which month has the highest total salary?
  Q2 (Self)                 - What is the total salary paid across all months?
  Q3 (Self)                 - What is the average salary per month?
  Q4 (Self)                 - Which month has the lowest total salary?
*/

USE EC_IT143_DA;
GO

/* ============================================================
   Q1 (Author: Ximena Gomora Flores)
   Which month has the highest total salary?
   ============================================================ */
SELECT TOP 1
    Month,
    TotalSalary
FROM dbo.t_MyFC_TotalSalaryByMonth
ORDER BY TotalSalary DESC;
GO

/* ============================================================
   Q2 (Author: Self)
   What is the total salary paid across all months?
   ============================================================ */
SELECT
    SUM(TotalSalary) AS TotalSalaryAllMonths
FROM dbo.t_MyFC_TotalSalaryByMonth;
GO

/* ============================================================
   Q3 (Author: Self)
   What is the average salary per month?
   ============================================================ */
SELECT
    AVG(TotalSalary) AS AverageMonthlySalary
FROM dbo.t_MyFC_TotalSalaryByMonth;
GO

/* ============================================================
   Q4 (Author: Self)
   Which month has the lowest total salary?
   ============================================================ */
SELECT TOP 1
    Month,
    TotalSalary
FROM dbo.t_MyFC_TotalSalaryByMonth
ORDER BY TotalSalary ASC;
GO