/*
EC_IT143_6.3_fwf_s3_xx.sql
Step 3: Create an ad hoc SQL query.

Goal: Test extracting the first name from ContactName.
*/

USE EC_IT143_DA;
GO

SELECT
    ContactName,
    LEFT(ContactName, CHARINDEX(' ', ContactName + ' ') - 1) AS FirstName
FROM dbo.t_w3_schools_customers;
GO