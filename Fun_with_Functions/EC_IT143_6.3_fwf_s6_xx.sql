/*
EC_IT143_6.3_fwf_s6_xx.sql
Step 6: Compare UDF results to ad hoc query results.

Expected: both columns match.
*/

USE EC_IT143_DA;
GO

SELECT
    ContactName,
    LEFT(ContactName, CHARINDEX(' ', ContactName + ' ') - 1) AS AdHocFirstName,
    dbo.fn_GetFirstName(ContactName)                         AS UdfFirstName
FROM dbo.t_w3_schools_customers;
GO