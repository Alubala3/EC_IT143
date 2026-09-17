/*****************************************************************************************************************
NAME:    EC_IT143_W3.4_AL.sql
PURPOSE: AdventureWorks — Create Answers (8 questions + SQL queries)

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     09/17/2026   Allan Lubala  Built this script for EC IT143 W3.4

RUNTIME: ~5 hours

NOTES: 
This script contains 8 SQL queries answering business and metadata questions using AdventureWorks 2022 OLTP.
Some queries (Q4–Q6) may return empty results due to dataset limitations.
******************************************************************************************************************/

-- Q1 Business User question—Marginal complexity
-- What are the five cheapest products in terms of list price?

SELECT TOP 5 Name, ListPrice
FROM Production.Product
ORDER BY ListPrice ASC;


-- Q2 Business User question—Marginal complexity
-- Which salesperson has the highest individual sales order total?

SELECT TOP 1 sp.BusinessEntityID, p.FirstName, p.LastName, SUM(soh.TotalDue) AS TotalSales
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesPerson sp ON soh.SalesPersonID = sp.BusinessEntityID
JOIN Person.Person p ON sp.BusinessEntityID = p.BusinessEntityID
GROUP BY sp.BusinessEntityID, p.FirstName, p.LastName
ORDER BY TotalSales DESC;


-- Q3 Business User question—Moderate complexity
-- Which product categories generate the most revenue? Show top three.

SELECT TOP 3 pc.Name AS Category, SUM(sod.OrderQty * sod.UnitPrice) AS Revenue
FROM Sales.SalesOrderDetail sod
JOIN Production.Product p ON sod.ProductID = p.ProductID
JOIN Production.ProductSubcategory ps ON p.ProductSubcategoryID = ps.ProductSubcategoryID
JOIN Production.ProductCategory pc ON ps.ProductCategoryID = pc.ProductCategoryID
GROUP BY pc.Name
ORDER BY Revenue DESC;


-- Q4 Business User question—Moderate complexity
-- Which customers purchased road bikes in 2013, and how many units did each buy?
-- Note: This query executes successfully but may return no rows in AdventureWorks 2022 OLTP.

SELECT c.CustomerID, p.FirstName, p.LastName, SUM(sod.OrderQty) AS UnitsPurchased
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
JOIN Production.Product pr ON sod.ProductID = pr.ProductID
JOIN Sales.Customer c ON soh.CustomerID = c.CustomerID
JOIN Person.Person p ON c.PersonID = p.BusinessEntityID
WHERE pr.Name LIKE '%Road Bike%'
  AND YEAR(soh.OrderDate) = 2013
GROUP BY c.CustomerID, p.FirstName, p.LastName
ORDER BY UnitsPurchased DESC;


-- Q5 Business User question—Increased complexity
-- Compare monthly sales of touring bikes in 2012 vs 2013.
-- Note: May return empty results depending on dataset.

SELECT YEAR(soh.OrderDate) AS Year, MONTH(soh.OrderDate) AS Month,
       SUM(sod.OrderQty) AS UnitsSold,
       SUM(sod.OrderQty * sod.UnitPrice) AS Revenue,
       SUM(sod.OrderQty * (pr.ListPrice - pr.StandardCost)) AS NetRevenue
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
JOIN Production.Product pr ON sod.ProductID = pr.ProductID
WHERE pr.Name LIKE '%Touring Bike%'
  AND YEAR(soh.OrderDate) IN (2012, 2013)
GROUP BY YEAR(soh.OrderDate), MONTH(soh.OrderDate)
ORDER BY Year, Month;


-- Q6 Business User question—Increased complexity
-- International orders in Q4 2014 grouped by country.
-- Note: May return empty results because dataset is mostly U.S. orders.

SELECT cr.Name AS Country,
       COUNT(DISTINCT soh.CustomerID) AS DistinctCustomers,
       SUM(sod.OrderQty) AS UnitsSold,
       SUM(sod.OrderQty * sod.UnitPrice) AS Revenue
FROM Sales.SalesOrderHeader AS soh
JOIN Sales.SalesOrderDetail AS sod ON soh.SalesOrderID = sod.SalesOrderID
JOIN Person.Address AS a ON soh.ShipToAddressID = a.AddressID
JOIN Person.StateProvince AS sp ON a.StateProvinceID = sp.StateProvinceID
JOIN Person.CountryRegion AS cr ON sp.CountryRegionCode = cr.CountryRegionCode
WHERE YEAR(soh.OrderDate) = 2014
  AND MONTH(soh.OrderDate) BETWEEN 10 AND 12
  AND cr.Name <> 'United States'
GROUP BY cr.Name
ORDER BY Revenue DESC;


-- Q7 Metadata question
-- List all tables with a column named BusinessEntityID.

SELECT TABLE_SCHEMA, TABLE_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME = 'BusinessEntityID';


-- Q8 Metadata question
-- Which views reference the Product table, and what columns are included?

SELECT TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME
FROM INFORMATION_SCHEMA.VIEW_COLUMN_USAGE
WHERE TABLE_NAME = 'Product';
