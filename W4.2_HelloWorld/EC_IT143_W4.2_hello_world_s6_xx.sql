/*
EC_IT143_W4.2_hello_world_s6_xx.sql
Step 6: Load the table from the view using an ad hoc SQL script.

TRUNCATE empties the table.
INSERT fills it back up from the view.

This is the simplest way to refresh a table from its source.
Naming symmetry helps: v_hello_world feeds t_hello_world.
*/

USE EC_IT143_DA;
GO

-- Empty the table
TRUNCATE TABLE dbo.t_hello_world;
GO

-- Refill it from the view
INSERT INTO dbo.t_hello_world (Greeting)
SELECT Greeting
FROM dbo.v_hello_world;
GO

-- Test the reloaded table
SELECT * FROM dbo.t_hello_world;