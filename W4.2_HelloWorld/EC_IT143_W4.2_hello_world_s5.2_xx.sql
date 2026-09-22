/*
EC_IT143_W4.2_hello_world_s5.2_xx.sql
Step 5.2: Refine the table architecture.

The table created in Step 5.1 was a quick prototype.
Now we drop it and rebuild it with:
  - Explicit column data types
  - NOT NULL constraint
  - A primary key

This makes the table durable and ready for real use.
*/

USE EC_IT143_DA;
GO

DROP TABLE IF EXISTS dbo.t_hello_world;
GO

CREATE TABLE dbo.t_hello_world (
    Greeting VARCHAR(50) NOT NULL
        CONSTRAINT PK_t_hello_world PRIMARY KEY
);
GO

-- Test the empty table structure
SELECT * FROM dbo.t_hello_world;