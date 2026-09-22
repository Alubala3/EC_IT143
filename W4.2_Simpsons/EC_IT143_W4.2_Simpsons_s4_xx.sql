/*
EC_IT143_W4.2_Simpsons_s4_xx.sql
Step 4: Turn the ad hoc SQL query into a view.

The view is stored in EC_IT143_DA (the working database for
views/tables/procedures), but reads from Simpsons using a
three-part name: Simpsons.dbo.FBS_Viza_Costmo.

Naming: v_Simpsons_TransactionsByMember
The v_ prefix marks it as a view.
*/

USE EC_IT143_DA;
GO

CREATE OR ALTER VIEW dbo.v_Simpsons_TransactionsByMember AS
SELECT
    f.Name          AS MemberName,
    COUNT(*)        AS TransactionCount
FROM Simpsons.dbo.FBS_Viza_Costmo c
JOIN Simpsons.dbo.Family_Data f ON c.Member_Name = f.Name
GROUP BY f.Name;
GO

-- Test the view
SELECT * FROM dbo.v_Simpsons_TransactionsByMember;