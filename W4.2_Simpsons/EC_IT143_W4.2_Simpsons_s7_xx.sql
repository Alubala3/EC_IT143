/*
EC_IT143_W4.2_Simpsons_s7_xx.sql
Step 7: Turn the ad hoc SQL script into a stored procedure.

The procedure wraps the Step 6 load script (TRUNCATE + INSERT)
and gives it a name: sp_load_t_Simpsons_TransactionsByMember.

Now the table can be refreshed with one line:
    EXEC dbo.sp_load_t_Simpsons_TransactionsByMember;
*/

USE EC_IT143_DA;
GO

CREATE OR ALTER PROCEDURE dbo.sp_load_t_Simpsons_TransactionsByMember
AS
BEGIN
    SET NOCOUNT ON;

    -- Empty the table
    TRUNCATE TABLE dbo.t_Simpsons_TransactionsByMember;

    -- Refill it from the view
    INSERT INTO dbo.t_Simpsons_TransactionsByMember (MemberName, TransactionCount)
    SELECT MemberName, TransactionCount
    FROM dbo.v_Simpsons_TransactionsByMember;
END;
GO