/*
EC_IT143_W4.2_hello_world_s7_xx.sql
Step 7: Turn the ad hoc SQL script into a stored procedure.

A stored procedure is a saved script that lives inside the database.
We take the Step 6 load script (TRUNCATE + INSERT) and give it a name:
sp_load_t_hello_world.

Now anyone can refresh the table by calling:
    EXEC dbo.sp_load_t_hello_world;
*/

USE EC_IT143_DA;
GO

CREATE OR ALTER PROCEDURE dbo.sp_load_t_hello_world
AS
BEGIN
    SET NOCOUNT ON;

    -- Empty the table
    TRUNCATE TABLE dbo.t_hello_world;

    -- Refill it from the view
    INSERT INTO dbo.t_hello_world (Greeting)
    SELECT Greeting
    FROM dbo.v_hello_world;
END;
GO