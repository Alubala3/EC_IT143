/*
EC_IT143_6.3_fwf_s7_xx.sql
Step 7: Perform a "0 results expected" test.

If the UDF is working correctly, this returns 0 rows — because every
UDF result should match the ad hoc result.
*/

USE EC_IT143_DA;
GO

WITH cte AS (
    SELECT
        ContactName,
        LEFT(ContactName, CHARINDEX(' ', ContactName + ' ') - 1) AS AdHocFirstName,
        dbo.fn_GetFirstName(ContactName)                         AS UdfFirstName
    FROM dbo.t_w3_schools_customers
)
SELECT *
FROM cte
WHERE AdHocFirstName <> UdfFirstName
   OR (AdHocFirstName IS NULL AND UdfFirstName IS NOT NULL)
   OR (AdHocFirstName IS NOT NULL AND UdfFirstName IS NULL);
GO