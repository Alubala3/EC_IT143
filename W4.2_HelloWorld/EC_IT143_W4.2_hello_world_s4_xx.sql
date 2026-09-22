/*
EC_IT143_W4.2_hello_world_s4_xx.sql
Step 4: Turn the ad hoc SQL query into a view.

A view is a saved query that lives in the database.
Anyone with access to EC_IT143_DA can call this view later
without rewriting the SELECT statement.

The name starts with v_ so it is easy to recognize as a view.
*/

USE EC_IT143_DA;
GO

CREATE OR ALTER VIEW dbo.v_hello_world AS
SELECT 'Hello World' AS Greeting;
GO

-- Test the view
SELECT * FROM dbo.v_hello_world;