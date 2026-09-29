/*
EC_IT143_W5.2_Simpsons_xx.sql
Step 1: Start with a question.
Community: Simpsons Consumers
Table: dbo.t_Simpsons_TransactionsByMember (MemberName, TransactionCount)

Questions & Answers:
  Q1 (Gabriel Espolong Rodriguez) - Which member has the most transactions?
  Q2 (Self)                       - What is the total number of transactions across all members?
  Q3 (Self)                       - What is the average number of transactions per member?
  Q4 (Self)                       - Which member has the fewest transactions?
*/

USE EC_IT143_DA;
GO

/* ============================================================
   Q1 (Author: Gabriel Espolong Rodriguez)
   Which member has the most transactions?
   ============================================================ */
SELECT TOP 1
    MemberName,
    TransactionCount
FROM dbo.t_Simpsons_TransactionsByMember
ORDER BY TransactionCount DESC;
GO

/* ============================================================
   Q2 (Author: Self)
   What is the total number of transactions across all members?
   ============================================================ */
SELECT
    SUM(TransactionCount) AS TotalTransactions
FROM dbo.t_Simpsons_TransactionsByMember;
GO

/* ============================================================
   Q3 (Author: Self)
   What is the average number of transactions per member?
   ============================================================ */
SELECT
    AVG(CAST(TransactionCount AS FLOAT)) AS AvgTransactionsPerMember
FROM dbo.t_Simpsons_TransactionsByMember;
GO

/* ============================================================
   Q4 (Author: Self)
   Which member has the fewest transactions?
   ============================================================ */
SELECT TOP 1
    MemberName,
    TransactionCount
FROM dbo.t_Simpsons_TransactionsByMember
ORDER BY TransactionCount ASC;
GO