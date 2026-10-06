/*
EC_IT143_6.3_fwt_s4_xx.sql
Step 4: Create an after-update trigger.

Trigger: trg_t_w3_schools_customers_LastModified
Purpose: On every UPDATE, stamp LastModifiedDate with the current date/time
         and LastModifiedBy with the server user name.
*/

USE EC_IT143_DA;
GO

CREATE OR ALTER TRIGGER dbo.trg_t_w3_schools_customers_LastModified
ON dbo.t_w3_schools_customers
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE c
    SET
        LastModifiedDate = GETDATE(),
        LastModifiedBy   = SUSER_SNAME()
    FROM dbo.t_w3_schools_customers AS c
    INNER JOIN inserted AS i ON c.CustomerID = i.CustomerID;
END;
GO