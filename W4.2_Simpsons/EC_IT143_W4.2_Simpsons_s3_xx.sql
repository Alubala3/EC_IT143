/*
EC_IT143_W4.2_Simpsons_s3_xx.sql
Step 3: Create an ad hoc SQL query.

This is my first attempt at answering the question:
"How many Visa Costmo transactions did each Simpsons family 
member make?"

I JOIN FBS_Viza_Costmo to Family_Data on the member name,
then GROUP BY the name and COUNT the rows.
*/

USE Simpsons;
GO

SELECT
    f.Name          AS MemberName,
    COUNT(*)        AS TransactionCount
FROM FBS_Viza_Costmo c
JOIN Family_Data f ON c.Member_Name = f.Name
GROUP BY f.Name;