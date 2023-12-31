create database jet2day3
USE jet2day3
GO

CREATE TABLE [dbo].[ProductCategoryTable](
	[ProductCategoryID] [int] NOT NULL,
	[ProductCategoryName] [nvarchar](15) NOT NULL
) 
GO


CREATE TABLE [dbo].[ProductQuantitySold](
	[ProductID] [int] NULL,
	[Qty] [int] NULL
) 
GO

CREATE TABLE [dbo].[ProductsTable](
	[ProductID] [int] IDENTITY(1,1) PRIMARY KEY,
	[ProductCategoryID] [int] NOT NULL,
	[ProductName] [nvarchar](40) NOT NULL,
	[SellingPrice] [money] NOT NULL)
GO


CREATE TABLE [dbo].[ProductStockByYear](
	[ProductCategoryName] [nvarchar](15) NOT NULL,
	[ProductName] [nvarchar](40) NOT NULL,
	[StockYear] [int] NULL,
	[EndStock] [int] NULL
) 
GO

INSERT [dbo].[ProductCategoryTable] ([ProductCategoryID], [ProductCategoryName]) VALUES (1, N'Knives')
INSERT [dbo].[ProductCategoryTable] ([ProductCategoryID], [ProductCategoryName]) VALUES (2, N'Utensils')
INSERT [dbo].[ProductCategoryTable] ([ProductCategoryID], [ProductCategoryName]) VALUES (3, N'Toaster')
INSERT [dbo].[ProductCategoryTable] ([ProductCategoryID], [ProductCategoryName]) VALUES (4, N'Griller')
INSERT [dbo].[ProductCategoryTable] ([ProductCategoryID], [ProductCategoryName]) VALUES (5, N'Lentils')
INSERT [dbo].[ProductCategoryTable] ([ProductCategoryID], [ProductCategoryName]) VALUES (6, N'Burner')
INSERT [dbo].[ProductCategoryTable] ([ProductCategoryID], [ProductCategoryName]) VALUES (7, N'Soaps')
INSERT [dbo].[ProductCategoryTable] ([ProductCategoryID], [ProductCategoryName]) VALUES (8, N'Spices')
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (1, 8)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (2, 2)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (3, 4)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (3, 8)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (3, 1)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (4, 5)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (5, 2)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (5, 2)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (6, 2)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (6, 3)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (6, 2)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (6, 9)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (6, 9)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (6, 8)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (6, 1)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (6, 6)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (6, 9)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (6, 2)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (6, 3)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (6, 4)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (6, 2)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (6, 2)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (6, 2)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (6, 1)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (6, 1)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (6, 9)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (6, 5)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (6, 7)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (6, 2)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (6, 9)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (6, 3)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (6, 9)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (6, 2)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (7, 9)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (8, 2)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (8, 2)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (8, 4)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (9, 3)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (10, 3)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (11, 2)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (12, 6)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (13, 1)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (14, 4)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (15, 9)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (15, 2)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (16, 6)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (16, 2)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (16, 3)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (16, 7)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (17, 2)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (17, 6)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (17, 2)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (18, 7)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (19, 1)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (20, 5)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (20, 4)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (21, 6)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (22, 1)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (22, 3)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (22, 6)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (23, 6)
INSERT [dbo].[ProductQuantitySold] ([ProductID], [Qty]) VALUES (24, 2)
SET IDENTITY_INSERT [dbo].[ProductsTable] ON 

INSERT [dbo].[ProductsTable] ([ProductID], [ProductCategoryID], [ProductName], [SellingPrice]) VALUES (1, 1, N'Folding Knives', 15.1300)
INSERT [dbo].[ProductsTable] ([ProductID], [ProductCategoryID], [ProductName], [SellingPrice]) VALUES (2, 1, N'Pocket Knives', 10.0000)
INSERT [dbo].[ProductsTable] ([ProductID], [ProductCategoryID], [ProductName], [SellingPrice]) VALUES (3, 1, N'Fixed-Blade Knives', 19.9700)
INSERT [dbo].[ProductsTable] ([ProductID], [ProductCategoryID], [ProductName], [SellingPrice]) VALUES (4, 2, N'Pressure Cooker', 43.9000)
INSERT [dbo].[ProductsTable] ([ProductID], [ProductCategoryID], [ProductName], [SellingPrice]) VALUES (5, 2, N'Frying Pan', 40.0000)
INSERT [dbo].[ProductsTable] ([ProductID], [ProductCategoryID], [ProductName], [SellingPrice]) VALUES (6, 2, N'Plates', 18.5000)
INSERT [dbo].[ProductsTable] ([ProductID], [ProductCategoryID], [ProductName], [SellingPrice]) VALUES (7, 3, N'4-Slice', 54.1300)
INSERT [dbo].[ProductsTable] ([ProductID], [ProductCategoryID], [ProductName], [SellingPrice]) VALUES (8, 3, N'2-Slice', 39.3000)
INSERT [dbo].[ProductsTable] ([ProductID], [ProductCategoryID], [ProductName], [SellingPrice]) VALUES (9, 3, N'Premium', 53.9000)
INSERT [dbo].[ProductsTable] ([ProductID], [ProductCategoryID], [ProductName], [SellingPrice]) VALUES (10, 4, N'Premium', 41.1800)
INSERT [dbo].[ProductsTable] ([ProductID], [ProductCategoryID], [ProductName], [SellingPrice]) VALUES (11, 4, N'2-Slice', 28.0000)
INSERT [dbo].[ProductsTable] ([ProductID], [ProductCategoryID], [ProductName], [SellingPrice]) VALUES (12, 4, N'4-Slice', 36.0000)
INSERT [dbo].[ProductsTable] ([ProductID], [ProductCategoryID], [ProductName], [SellingPrice]) VALUES (13, 5, N'Dried Pulse', 28.0000)
INSERT [dbo].[ProductsTable] ([ProductID], [ProductCategoryID], [ProductName], [SellingPrice]) VALUES (14, 5, N'Red Kidney Beans', 17.0000)
INSERT [dbo].[ProductsTable] ([ProductID], [ProductCategoryID], [ProductName], [SellingPrice]) VALUES (15, 5, N'Green Pulses', 23.9900)
INSERT [dbo].[ProductsTable] ([ProductID], [ProductCategoryID], [ProductName], [SellingPrice]) VALUES (16, 6, N'Glass Top Alloy', 62.5000)
INSERT [dbo].[ProductsTable] ([ProductID], [ProductCategoryID], [ProductName], [SellingPrice]) VALUES (17, 6, N'Glass Top Brass', 65.3300)
INSERT [dbo].[ProductsTable] ([ProductID], [ProductCategoryID], [ProductName], [SellingPrice]) VALUES (18, 6, N'Induction Burner', 70.0000)
INSERT [dbo].[ProductsTable] ([ProductID], [ProductCategoryID], [ProductName], [SellingPrice]) VALUES (19, 7, N'Tile Cleaner', 10.0000)
INSERT [dbo].[ProductsTable] ([ProductID], [ProductCategoryID], [ProductName], [SellingPrice]) VALUES (20, 7, N'Floor Cleaner', 12.8300)
INSERT [dbo].[ProductsTable] ([ProductID], [ProductCategoryID], [ProductName], [SellingPrice]) VALUES (21, 7, N'Utensils Cleaner', 9.0000)
INSERT [dbo].[ProductsTable] ([ProductID], [ProductCategoryID], [ProductName], [SellingPrice]) VALUES (22, 8, N'Turmeric', 9.0000)
INSERT [dbo].[ProductsTable] ([ProductID], [ProductCategoryID], [ProductName], [SellingPrice]) VALUES (23, 8, N'Rock Salt', 7.0000)
INSERT [dbo].[ProductsTable] ([ProductID], [ProductCategoryID], [ProductName], [SellingPrice]) VALUES (24, 8, N'Black Pepper', 10.0000)
SET IDENTITY_INSERT [dbo].[ProductsTable] OFF
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Burner', N'Glass Top Alloy', 2013, 987)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Burner', N'Glass Top Alloy', 2014, 818)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Burner', N'Glass Top Alloy', 2015, 925)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Burner', N'Glass Top Brass', 2013, 793)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Burner', N'Glass Top Brass', 2014, 980)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Burner', N'Glass Top Brass', 2015, 728)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Burner', N'Induction Burner', 2013, 981)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Burner', N'Induction Burner', 2014, 988)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Burner', N'Induction Burner', 2015, 873)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Griller', N'2-Slice', 2013, 910)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Griller', N'2-Slice', 2014, 958)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Griller', N'2-Slice', 2015, 993)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Griller', N'4-Slice', 2013, 970)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Griller', N'4-Slice', 2014, 969)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Griller', N'4-Slice', 2015, 990)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Griller', N'Premium', 2013, 977)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Griller', N'Premium', 2014, 962)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Griller', N'Premium', 2015, 870)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Knives', N'Fixed-Blade Knives', 2013, 944)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Knives', N'Fixed-Blade Knives', 2014, 930)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Knives', N'Fixed-Blade Knives', 2015, 927)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Knives', N'Folding Knives', 2013, 965)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Knives', N'Folding Knives', 2014, 938)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Knives', N'Folding Knives', 2015, 991)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Knives', N'Pocket Knives', 2013, 830)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Knives', N'Pocket Knives', 2014, 848)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Knives', N'Pocket Knives', 2015, 821)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Lentils', N'Dried Pulse', 2013, 851)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Lentils', N'Dried Pulse', 2014, 809)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Lentils', N'Dried Pulse', 2015, 909)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Lentils', N'Green Pulses', 2013, 926)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Lentils', N'Green Pulses', 2014, 925)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Lentils', N'Green Pulses', 2015, 954)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Lentils', N'Red Kidney Beans', 2013, 634)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Lentils', N'Red Kidney Beans', 2014, 956)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Lentils', N'Red Kidney Beans', 2015, 931)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Soaps', N'Floor Cleaner', 2013, 909)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Soaps', N'Floor Cleaner', 2014, 964)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Soaps', N'Floor Cleaner', 2015, 934)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Soaps', N'Tile Cleaner', 2013, 899)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Soaps', N'Tile Cleaner', 2014, 935)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Soaps', N'Tile Cleaner', 2015, 977)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Soaps', N'Utensils Cleaner', 2013, 999)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Soaps', N'Utensils Cleaner', 2014, 919)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Soaps', N'Utensils Cleaner', 2015, 951)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Spices', N'Black Pepper', 2013, 956)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Spices', N'Black Pepper', 2014, 859)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Spices', N'Black Pepper', 2015, 971)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Spices', N'Rock Salt', 2013, 939)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Spices', N'Rock Salt', 2014, 879)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Spices', N'Rock Salt', 2015, 911)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Spices', N'Turmeric', 2013, 829)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Spices', N'Turmeric', 2014, 886)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Spices', N'Turmeric', 2015, 950)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Toaster', N'2-Slice', 2013, 995)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Toaster', N'2-Slice', 2014, 790)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Toaster', N'2-Slice', 2015, 981)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Toaster', N'4-Slice', 2013, 955)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Toaster', N'4-Slice', 2014, 998)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Toaster', N'4-Slice', 2015, 936)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Toaster', N'Premium', 2013, 954)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Toaster', N'Premium', 2014, 996)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Toaster', N'Premium', 2015, 847)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Utensils', N'Frying Pan', 2013, 999)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Utensils', N'Frying Pan', 2014, 804)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Utensils', N'Frying Pan', 2015, 985)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Utensils', N'Plates', 2013, 915)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Utensils', N'Plates', 2014, 981)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Utensils', N'Plates', 2015, 969)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Utensils', N'Pressure Cooker', 2013, 985)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Utensils', N'Pressure Cooker', 2014, 998)
INSERT [dbo].[ProductStockByYear] ([ProductCategoryName], [ProductName], [StockYear], [EndStock]) VALUES (N'Utensils', N'Pressure Cooker', 2015, 962)


select * from [ProductCategoryTable]
select * from [ProductQuantitySold]
select * from [ProductsTable]
select * from [ProductStockByYear]

--Sheet 1

select pt.ProductCategoryID,p.ProductCategoryName,pt.ProductName,pt.SellingPrice,
AVG(pt.SellingPrice) over(partition by pt.ProductCategoryID)as AveragePriceByCategory,
SellingPrice - AVG(pt.SellingPrice) over(partition by pt.ProductCategoryID) as DifferenceAveragePriceByCategory
from ProductCategoryTable p inner join ProductsTable pt
on pt.ProductCategoryID = p.ProductCategoryID
--Sheet 2

-- select * from [ProductCategoryTable]
-- select * from [ProductsTable]
-- select * from [ProductQuantitySold]

select p.ProductCategoryName,pt.ProductName, pt.SellingPrice * q.Qty
from ProductCategoryTable p inner join ProductsTable pt
on pt.ProductCategoryID = p.ProductCategoryID
inner join ProductQuantitySold q
on pt.ProductID = q.ProductID
order by ProductCategoryName
--Sheet 3

-- exec sp_columns [ProductStockByYear]

select ProductCategoryName,ProductName,StockYear,EndStock,
LAG(EndStock, 1,0) OVER(PARTITION BY ProductCategoryName
ORDER BY ProductCategoryName) AS PreviousYearStock
from ProductStockByYear


select ProductCategoryName,ProductName,StockYear,EndStock,
EndStock - First_Value(EndStock) OVER(PARTITION BY ProductCategoryName,ProductName
ORDER BY ProductCategoryName) as SockDiff
from ProductStockByYear

