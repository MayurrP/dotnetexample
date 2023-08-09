use jet2
CREATE TABLE [dbo].[DimCustomer](
	[CustID] [int] IDENTITY(1,1) NOT NULL,
	[Cname] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimGeography]    Script Date: 6/9/2023 10:41:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimGeography](
	[GeogID] [int] IDENTITY(1,1) NOT NULL,
	[Country] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[City] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[GeogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimProduct]    Script Date: 6/9/2023 10:41:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimProduct](
	[ProdID] [int] IDENTITY(1,1) NOT NULL,
	[ProductCategory] [varchar](50) NULL,
	[ProductSubCategory] [varchar](50) NULL,
	[ProductName] [varchar](50) NULL,
	[ProductColor] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProdID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactInternetSales]    Script Date: 6/9/2023 10:41:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactInternetSales](
	[CustID] [int] NULL,
	[ProdID] [int] NULL,
	[GeogID] [int] NULL,
	[SalesAmt] [int] NULL,
	[TaxAmt] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactSales]    Script Date: 6/9/2023 10:41:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactSales](
	[CustID] [int] NULL,
	[ProdID] [int] NULL,
	[SalesAmt] [int] NULL,
	[TaxAmt] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OLE DB Destination]    Script Date: 6/9/2023 10:41:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OLE DB Destination](
	[CustomerName] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[EmailAddress] [varchar](50) NULL,
	[ProductCateegory] [varchar](50) NULL,
	[SubCategory] [varchar](50) NULL,
	[ProductName] [varchar](50) NULL,
	[ProductColor] [varchar](50) NULL,
	[CountryName] [varchar](50) NULL,
	[StateName] [varchar](50) NULL,
	[CityName] [varchar](50) NULL,
	[SalesAmt] [int] NULL,
	[TaxAmt] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[OLE DB Destination] ([CustomerName], [Address], [Phone], [EmailAddress], [ProductCateegory], [SubCategory], [ProductName], [ProductColor], [CountryName], [StateName], [CityName], [SalesAmt], [TaxAmt]) VALUES (N'C1', N'Add1', N'Tel1', N'Ph1', N'Electronic', N'Laptop', N'DELL', N'Black', N'India ', N'HP', N'Shimla', 40000, 4000)
INSERT [dbo].[OLE DB Destination] ([CustomerName], [Address], [Phone], [EmailAddress], [ProductCateegory], [SubCategory], [ProductName], [ProductColor], [CountryName], [StateName], [CityName], [SalesAmt], [TaxAmt]) VALUES (N'C2', N'Add2', N'Tel2', N'Ph2', N'Electronic', N'Desktop', N'DELL', N'Black', N'India ', N'UP', N'Noida', 35000, 3500)
INSERT [dbo].[OLE DB Destination] ([CustomerName], [Address], [Phone], [EmailAddress], [ProductCateegory], [SubCategory], [ProductName], [ProductColor], [CountryName], [StateName], [CityName], [SalesAmt], [TaxAmt]) VALUES (N'C2', N'Add2', N'Tel2', N'Ph2', N'Electronic', N'Desktop', N'DELL', N'Black', N'India ', N'UP', N'Noida', 35000, 3500)
INSERT [dbo].[OLE DB Destination] ([CustomerName], [Address], [Phone], [EmailAddress], [ProductCateegory], [SubCategory], [ProductName], [ProductColor], [CountryName], [StateName], [CityName], [SalesAmt], [TaxAmt]) VALUES (N'C3', N'Add3', N'Tel3', N'Ph3', N'Electronic', N'Desktop', N'DELL', N'Black', NULL, NULL, NULL, 45000, 4000)
INSERT [dbo].[OLE DB Destination] ([CustomerName], [Address], [Phone], [EmailAddress], [ProductCateegory], [SubCategory], [ProductName], [ProductColor], [CountryName], [StateName], [CityName], [SalesAmt], [TaxAmt]) VALUES (N'C4', N'Add4', N'Tel4', N'Ph4', N'Electronic', N'Mobile', N'Samsung', N'White', NULL, NULL, NULL, 15000, 1000)



 select * from [dbo].[OLE DB Destination]
 select * from [dbo].[DimCustomer]
 select * from [dbo].[DimGeography]
 select * from [dbo].[DimProduct]
 select * from [dbo].[FactSales]
 select * from [dbo].[FactInternetSales]

--
 declare @val varchar(10)
 set @val = '12'
 declare @num tinyint
 set @num = @val + 10
 print @num
 --
 select * from DimCustomer

 -- Insert into DimCustomer

 insert into DimCustomer(Cname,Address,PhoneNumber,Email)
 select distinct CustomerName,Address,Phone,EmailAddress from [dbo].[OLE DB Destination]

  -- Insert into [DimGeography]

 select * from [dbo].[DimGeography]

 insert into [DimGeography](Country,State,City)
 select distinct CountryName,StateName,CityName from [dbo].[OLE DB Destination]
  where CountryName is not null

   -- Insert into DimProduct

 select * from [dbo].[DimProduct]

 insert into [DimProduct] (ProductCategory,ProductSubCategory,ProductName,ProductColor)
 select distinct ProductCateegory,SubCategory,ProductName,ProductColor from [dbo].[OLE DB Destination]

 
  -- Insert into FactSales

 insert into [FactSales](CustID,ProdID,SalesAmt,TaxAmt)
 select distinct c.CustID,p.ProdID,d.SalesAmt,d.TaxAmt 
 from [dbo].[OLE DB Destination] d inner join DimCustomer c
 on d.CustomerName = c.Cname
 inner join DimProduct p
 on p.ProductSubCategory = d.SubCategory


  select * from [dbo].[FactSales]


  -- Insert into [FactInternetSales]

  insert into [FactInternetSales](CustID,ProdID,GeogID,SalesAmt,TaxAmt)
 select distinct c.CustID,p.ProdID,g.GeogID,d.SalesAmt,d.TaxAmt 
 from [dbo].[OLE DB Destination] d inner join DimCustomer c
 on d.CustomerName = c.Cname
 inner join DimProduct p
 on p.ProductSubCategory = d.SubCategory
 inner join DimGeography g
 on d.CountryName = g.Country and d.StateName = g.State and d.CityName = g.City



 select * from [dbo].[FactInternetSales]