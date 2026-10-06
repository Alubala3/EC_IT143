/*
EC_IT143_6.3_fwf_s5_xx.sql
Step 5: Create a user-defined scalar function.

Function: dbo.fn_GetFirstName
Input:    @FullName NVARCHAR(100)
Returns:  NVARCHAR(50) — the first word before the space
*/

USE EC_IT143_DA;
GO

CREATE OR ALTER FUNCTION dbo.fn_GetFirstName
(
    @FullName NVARCHAR(100)
)
RETURNS NVARCHAR(50)
AS
BEGIN
    DECLARE @FirstName NVARCHAR(50);

    IF @FullName IS NULL OR LEN(@FullName) = 0
        RETURN NULL;

    SET @FirstName = LEFT(@FullName, CHARINDEX(' ', @FullName + ' ') - 1);
    RETURN @FirstName;
END;
GO

-- Quick test
SELECT dbo.fn_GetFirstName('Maria Anders') AS TestResult;
GO