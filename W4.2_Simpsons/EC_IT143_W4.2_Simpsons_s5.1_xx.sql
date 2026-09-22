/*
EC_IT143_W4.2_Simpsons_s5.1_xx.sql
Step 5.1: Turn the view into a table (quick version).

SELECT ... INTO creates a brand new table from the view.
The table lives in EC_IT143_DA alongside the view.

Naming: t_Simpsons_TransactionsByMember
The t_ prefix marks it as a table.
*/

USE EC_IT143_DA;
GO

-- Drop if it already exists
DROP TABLE IF EXISTS dbo.t_Simpsons_TransactionsByMember;
GO

-- Create the table from the view
SELECT *
INTO dbo.t_Simpsons_TransactionsByMember
FROM dbo.v_Simpsons_TransactionsByMember;
GO

-- Test the table
SELECT * FROM dbo.t_Simpsons_TransactionsByMember;