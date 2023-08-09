 USE jet2

CREATE TABLE [dbo].[Available](
	[HotelID] [int] NULL,
	[WebsiteID] [int] NULL,
	[NumberofRooms] [tinyint] NULL
) 

CREATE TABLE [dbo].[Hotel](
	[HotelID] [int] NULL,
	[HotelName] [varchar](40) NULL
) 

CREATE TABLE [dbo].[PriceList](
	[HotelID] [int] NULL,
	[WebsiteID] [int] NULL,
	[Price] [int] NULL
) 

CREATE TABLE [dbo].[website](
	[WebsiteID] [int] NULL,
	[WebsiteName] [varchar](40) NULL
) 



INSERT [dbo].[Available] ([HotelID], [WebsiteID], [NumberofRooms]) VALUES (1, 1, 4)
INSERT [dbo].[Available] ([HotelID], [WebsiteID], [NumberofRooms]) VALUES (1, 2, 4)
INSERT [dbo].[Available] ([HotelID], [WebsiteID], [NumberofRooms]) VALUES (1, 3, 4)
INSERT [dbo].[Available] ([HotelID], [WebsiteID], [NumberofRooms]) VALUES (1, 4, 4)
INSERT [dbo].[Available] ([HotelID], [WebsiteID], [NumberofRooms]) VALUES (2, 1, 4)
INSERT [dbo].[Available] ([HotelID], [WebsiteID], [NumberofRooms]) VALUES (2, 2, 0)
INSERT [dbo].[Available] ([HotelID], [WebsiteID], [NumberofRooms]) VALUES (2, 3, 4)
INSERT [dbo].[Available] ([HotelID], [WebsiteID], [NumberofRooms]) VALUES (2, 4, 3)
INSERT [dbo].[Available] ([HotelID], [WebsiteID], [NumberofRooms]) VALUES (3, 1, 5)
INSERT [dbo].[Available] ([HotelID], [WebsiteID], [NumberofRooms]) VALUES (3, 2, 5)
INSERT [dbo].[Available] ([HotelID], [WebsiteID], [NumberofRooms]) VALUES (3, 3, 1)
INSERT [dbo].[Available] ([HotelID], [WebsiteID], [NumberofRooms]) VALUES (3, 4, 0)
INSERT [dbo].[Available] ([HotelID], [WebsiteID], [NumberofRooms]) VALUES (4, 1, 4)
INSERT [dbo].[Available] ([HotelID], [WebsiteID], [NumberofRooms]) VALUES (4, 2, 2)
INSERT [dbo].[Available] ([HotelID], [WebsiteID], [NumberofRooms]) VALUES (4, 3, 0)
INSERT [dbo].[Available] ([HotelID], [WebsiteID], [NumberofRooms]) VALUES (4, 4, 4)
INSERT [dbo].[Available] ([HotelID], [WebsiteID], [NumberofRooms]) VALUES (5, 1, 3)
INSERT [dbo].[Available] ([HotelID], [WebsiteID], [NumberofRooms]) VALUES (5, 2, 5)
INSERT [dbo].[Available] ([HotelID], [WebsiteID], [NumberofRooms]) VALUES (5, 3, 3)
INSERT [dbo].[Available] ([HotelID], [WebsiteID], [NumberofRooms]) VALUES (5, 4, 0)
INSERT [dbo].[Hotel] ([HotelID], [HotelName]) VALUES (1,'Oasis Hotel')
INSERT [dbo].[Hotel] ([HotelID], [HotelName]) VALUES (2,'Ginger Hotel')
INSERT [dbo].[Hotel] ([HotelID], [HotelName]) VALUES (3,'Shikha Hotel')
INSERT [dbo].[Hotel] ([HotelID], [HotelName]) VALUES (4,'Roe Rich')
INSERT [dbo].[Hotel] ([HotelID], [HotelName]) VALUES (5,'Radisson Hotel')
INSERT [dbo].[PriceList] ([HotelID], [WebsiteID], [Price]) VALUES (1, 1, 3000)
INSERT [dbo].[PriceList] ([HotelID], [WebsiteID], [Price]) VALUES (1, 2, 2800)
INSERT [dbo].[PriceList] ([HotelID], [WebsiteID], [Price]) VALUES (1, 3, 2970)
INSERT [dbo].[PriceList] ([HotelID], [WebsiteID], [Price]) VALUES (1, 4, 3100)
INSERT [dbo].[PriceList] ([HotelID], [WebsiteID], [Price]) VALUES (2, 1, 3600)
INSERT [dbo].[PriceList] ([HotelID], [WebsiteID], [Price]) VALUES (2, 2, 3900)
INSERT [dbo].[PriceList] ([HotelID], [WebsiteID], [Price]) VALUES (2, 3, 3970)
INSERT [dbo].[PriceList] ([HotelID], [WebsiteID], [Price]) VALUES (2, 4, 3540)
INSERT [dbo].[PriceList] ([HotelID], [WebsiteID], [Price]) VALUES (3, 1, 3300)
INSERT [dbo].[PriceList] ([HotelID], [WebsiteID], [Price]) VALUES (3, 2, 3300)
INSERT [dbo].[PriceList] ([HotelID], [WebsiteID], [Price]) VALUES (3, 3, 3330)
INSERT [dbo].[PriceList] ([HotelID], [WebsiteID], [Price]) VALUES (3, 4, 3100)
INSERT [dbo].[PriceList] ([HotelID], [WebsiteID], [Price]) VALUES (4, 1, 4000)
INSERT [dbo].[PriceList] ([HotelID], [WebsiteID], [Price]) VALUES (4, 2, 3800)
INSERT [dbo].[PriceList] ([HotelID], [WebsiteID], [Price]) VALUES (4, 3, 4200)
INSERT [dbo].[PriceList] ([HotelID], [WebsiteID], [Price]) VALUES (4, 4, 4100)
INSERT [dbo].[PriceList] ([HotelID], [WebsiteID], [Price]) VALUES (5, 1, 5000)
INSERT [dbo].[PriceList] ([HotelID], [WebsiteID], [Price]) VALUES (5, 2, 4900)
INSERT [dbo].[PriceList] ([HotelID], [WebsiteID], [Price]) VALUES (5, 3, 4970)
INSERT [dbo].[PriceList] ([HotelID], [WebsiteID], [Price]) VALUES (5, 4, 5100)
INSERT [dbo].[website] ([WebsiteID], [WebsiteName]) VALUES (1,'Trivago')
INSERT [dbo].[website] ([WebsiteID], [WebsiteName]) VALUES (2,'MakemyTrip')
INSERT [dbo].[website] ([WebsiteID], [WebsiteName]) VALUES (3,'Booking.com')
INSERT [dbo].[website] ([WebsiteID], [WebsiteName]) VALUES (4,'Goibibo')

 
 
 select * from Hotel
 select * from website
 select * from PriceList
 select * from Available


  select h.HotelName,w.WebsiteName,p.Price,a.NumberofRooms 
  from PriceList p inner join Available a
  on p.HotelID=a.HotelID and p.WebsiteID=a.WebsiteID
  inner join Hotel h on h.HotelID=p.HotelID
  inner join website w on w.WebsiteID=p.WebsiteID
  where a.NumberofRooms >0