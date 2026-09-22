/*
EC_IT143_W4.2_hello_world_s5.1_xx.sql
Step 5.1: Turn the view into a table (quick version).

SELECT ... INTO creates a brand new table from the view.
The table name starts with t_ so it is easy to recognize as a table.

This is the fastest way to make a table.
Step 5.2 will refine it (add a primary key, constraints, etc.).
*/

USE EC_IT143_DA;
GO

-- If the table already exists, drop it so we can rebuild it
DROP TABLE IF EXISTS dbo.t_hello_world;
GO

-- Create the table from the view
SELECT *
INTO dbo.t_hello_world
FROM dbo.v_hello_world;
GO

-- Test the table
SELECT * FROM dbo.t_hello_world;