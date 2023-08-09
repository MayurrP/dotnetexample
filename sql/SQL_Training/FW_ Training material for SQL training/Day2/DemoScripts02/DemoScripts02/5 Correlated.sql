USE jet2
CREATE TABLE [dbo].[tblDiscount](
	[ProductID] [int] NULL,
	[Rate] [decimal](5, 3) NULL
) 

CREATE TABLE [dbo].[tblProduct](
	[ProductID] [int] NULL,
	[ProductName] [varchar](50) NULL,
	[Price] [int] NULL
) 

INSERT [dbo].[tblDiscount] ([ProductID], [Rate]) VALUES (1, CAST(0.010 AS Decimal(5, 3)))
INSERT [dbo].[tblDiscount] ([ProductID], [Rate]) VALUES (1, CAST(0.050 AS Decimal(5, 3)))
INSERT [dbo].[tblDiscount] ([ProductID], [Rate]) VALUES (3, CAST(0.100 AS Decimal(5, 3)))
INSERT [dbo].[tblDiscount] ([ProductID], [Rate]) VALUES (5, CAST(0.090 AS Decimal(5, 3)))
INSERT [dbo].[tblDiscount] ([ProductID], [Rate]) VALUES (5, CAST(0.190 AS Decimal(5, 3)))
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price]) VALUES (1, 'Prod1', 100)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price]) VALUES (2, 'Prod2', 200)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price]) VALUES (3, 'Prod3', 100)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price]) VALUES (4, 'Prod4', 400)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price]) VALUES (5, 'Prod4', 400)

--Correlated SubQueryExample Not Exists
select * from tblDiscount

select * from tblProduct p
where not exists
(
     select 1 from tblDiscount d where  d.ProductID=p.ProductID

)

   
   
   
   
   