--How to use Window Function in where condition in SQL Server

use jet2
go

SELECT 
 SalesGroup,
 Country,
 AnnualSales,
 SUM(AnnualSales) OVER(PARTITION BY SalesGroup) AS TotalSales
FROM RegionalSales
where SUM(AnnualSales) OVER(PARTITION BY SalesGroup)>100000 -- Error

GO
--SOLUTION USING COMMON TABLE EXPRESSION

with ctename as
(
SELECT 
 SalesGroup,
 Country,
 AnnualSales,
 SUM(AnnualSales) OVER(PARTITION BY SalesGroup) AS TotalSales
FROM RegionalSales
)
select * from ctename where TotalSales >100000 

--SOLUTION USING DERIVED TABLES
select * from
(
SELECT 
 SalesGroup,
 Country,
 AnnualSales,
 SUM(AnnualSales) OVER(PARTITION BY SalesGroup) AS TotalSales
FROM RegionalSales
) as T
where T.TotalSales > 100000




