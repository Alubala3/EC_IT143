/*
EC_IT143_6.3_fwt_s5_xx.sql
Step 5: Test results to see if they are as expected.

1. Update one row.
2. Check that LastModifiedDate and LastModifiedBy were populated.
*/

USE EC_IT143_DA;
GO

-- Trigger the UPDATE
UPDATE dbo.t_w3_schools_customers
SET ContactName = ContactName
WHERE CustomerID = (SELECT TOP 1 CustomerID FROM dbo.t_w3_schools_customers);
GO

-- Verify the trigger worked
SELECT TOP 5
    CustomerID,
    ContactName,
    LastModifiedDate,
    LastModifiedBy
FROM dbo.t_w3_schools_customers;
GO