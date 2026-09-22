/*
EC_IT143_W4.2_Simpsons_s8_xx.sql
Step 8: Call the stored procedure.

Calling sp_load_t_Simpsons_TransactionsByMember refreshes the
table in one line — no need to remember TRUNCATE + INSERT.

The SELECT proves the whole pipeline works end-to-end:
  view → table → stored procedure → call.
*/

USE EC_IT143_DA;
GO

-- Call the procedure to refresh the table
EXEC dbo.sp_load_t_Simpsons_TransactionsByMember;
GO

-- Verify the refreshed data
SELECT * FROM dbo.t_Simpsons_TransactionsByMember;