/*
EC_IT143_W4.2_Simpsons_s6_xx.sql
Step 6: Load the table from the view using an ad hoc SQL script.

TRUNCATE empties the table.
INSERT refills it from the view.

Naming symmetry: v_Simpsons_TransactionsByMember feeds
                 t_Simpsons_TransactionsByMember
*/

USE EC_IT143_DA;
GO

-- Empty the table
TRUNCATE TABLE dbo.t_Simpsons_TransactionsByMember;
GO

-- Refill it from the view
INSERT INTO dbo.t_Simpsons_TransactionsByMember (MemberName, TransactionCount)
SELECT MemberName, TransactionCount
FROM dbo.v_Simpsons_TransactionsByMember;
GO

-- Test the reloaded table
SELECT * FROM dbo.t_Simpsons_TransactionsByMember;