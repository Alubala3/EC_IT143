/*
Performance_Analysis_Missing_Indexes.sql
Assignment: 6.3 Performance Analysis
Author:     Lubala Allan
Purpose:    Demonstrate execution plans and index creation
            on dbo.t_w3_schools_customers in EC_IT143_DA.
*/

USE EC_IT143_DA;
GO

/* ============================================================
   QUERY 1 — Filter by unindexed column (City)
   ============================================================ */

-- Step 1: Enable Ctrl+M, then run this query
--         Observe the Clustered Index Scan and Estimated Subtree Cost
SELECT
    CustomerID,
    ContactName,
    City,
    Country
FROM dbo.t_w3_schools_customers
WHERE City = 'Oslo';
GO

-- Step 2: Create a nonclustered index on City
CREATE NONCLUSTERED INDEX IX_t_w3_schools_customers_City
ON dbo.t_w3_schools_customers (City)
INCLUDE (ContactName, Country);
GO

-- Step 3: Re-run and observe the Index Seek + lower subtree cost
SELECT
    CustomerID,
    ContactName,
    City,
    Country
FROM dbo.t_w3_schools_customers
WHERE City = 'Oslo';
GO


/* ============================================================
   QUERY 2 — Filter by a different unindexed column (Country)
   ============================================================ */

-- Run with Ctrl+M enabled
SELECT
    CustomerID,
    ContactName,
    Country
FROM dbo.t_w3_schools_customers
WHERE Country = 'Mexico';
GO

-- Create a nonclustered index on Country
CREATE NONCLUSTERED INDEX IX_t_w3_schools_customers_Country
ON dbo.t_w3_schools_customers (Country)
INCLUDE (ContactName);
GO

-- Re-run to see improvement
SELECT
    CustomerID,
    ContactName,
    Country
FROM dbo.t_w3_schools_customers
WHERE Country = 'Mexico';
GO