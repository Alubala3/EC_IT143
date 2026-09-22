/*
EC_IT143_W4.2_hello_world_s8_xx.sql
Step 8: Call the stored procedure.

The stored procedure sp_load_t_hello_world encapsulates the
TRUNCATE + INSERT from Step 6. Calling it refreshes the table
in one line.

This is the final step in the answer-focused approach:
the whole pipeline is now reusable with a single command.
*/

USE EC_IT143_DA;
GO

-- Call the procedure to refresh the table
EXEC dbo.sp_load_t_hello_world;
GO

-- Verify the refreshed data
SELECT * FROM dbo.t_hello_world;