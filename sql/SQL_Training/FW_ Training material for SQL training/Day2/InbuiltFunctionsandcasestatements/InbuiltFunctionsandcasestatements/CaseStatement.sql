USE [SQLTrainingDB]

CREATE TABLE [dbo].[Hoteldetails](
	[HotelID] [int] NULL,
	[WebsiteID] [int] NULL,
	[Price] [int] NULL
) 

INSERT [dbo].[Hoteldetails] ([HotelID], [WebsiteID], [Price]) VALUES (1, 1, 3000)
INSERT [dbo].[Hoteldetails] ([HotelID], [WebsiteID], [Price]) VALUES (1, 2, 2800)
INSERT [dbo].[Hoteldetails] ([HotelID], [WebsiteID], [Price]) VALUES (1, 3, 2970)
INSERT [dbo].[Hoteldetails] ([HotelID], [WebsiteID], [Price]) VALUES (1, 4, 3100)
INSERT [dbo].[Hoteldetails] ([HotelID], [WebsiteID], [Price]) VALUES (2, 1, 3600)
INSERT [dbo].[Hoteldetails] ([HotelID], [WebsiteID], [Price]) VALUES (2, 2, 3900)
INSERT [dbo].[Hoteldetails] ([HotelID], [WebsiteID], [Price]) VALUES (2, 3, 3970)
INSERT [dbo].[Hoteldetails] ([HotelID], [WebsiteID], [Price]) VALUES (2, 4, 3540)
INSERT [dbo].[Hoteldetails] ([HotelID], [WebsiteID], [Price]) VALUES (3, 1, 3300)
INSERT [dbo].[Hoteldetails] ([HotelID], [WebsiteID], [Price]) VALUES (3, 2, 3300)
INSERT [dbo].[Hoteldetails] ([HotelID], [WebsiteID], [Price]) VALUES (3, 3, 3330)
INSERT [dbo].[Hoteldetails] ([HotelID], [WebsiteID], [Price]) VALUES (3, 4, 3100)
INSERT [dbo].[Hoteldetails] ([HotelID], [WebsiteID], [Price]) VALUES (4, 1, 4000)
INSERT [dbo].[Hoteldetails] ([HotelID], [WebsiteID], [Price]) VALUES (4, 2, 3800)
INSERT [dbo].[Hoteldetails] ([HotelID], [WebsiteID], [Price]) VALUES (4, 3, 4200)
INSERT [dbo].[Hoteldetails] ([HotelID], [WebsiteID], [Price]) VALUES (4, 4, 4100)
INSERT [dbo].[Hoteldetails] ([HotelID], [WebsiteID], [Price]) VALUES (5, 1, 5000)
INSERT [dbo].[Hoteldetails] ([HotelID], [WebsiteID], [Price]) VALUES (5, 2, 4900)
INSERT [dbo].[Hoteldetails] ([HotelID], [WebsiteID], [Price]) VALUES (5, 3, 4970)
INSERT [dbo].[Hoteldetails] ([HotelID], [WebsiteID], [Price]) VALUES (5, 4, 5100)

select * from Hoteldetails

select case HotelID 
when 1 then 'RoeRich'
when 2 then 'Ginger'
when 3 then 'Oasis'
when 4 then 'Radisson'
else 'Oberoi'
end as HotelNAme
,
case when WebsiteID=1 then  'GoIbibo'
when WebsiteID in (2,3) then  'Booking.com'
--when WebsiteID=3 then  'Trivago.com'
else  'MakemyTrip'
end as WebsiteName
,Price
from Hoteldetails


alter table Hoteldetails  
alter column Hotelid varchar(40)

alter table Hoteldetails  
alter column WebsiteID varchar(40)

update Hoteldetails set Hotelid=
case HotelID 
when 1 then 'RoeRich'
when 2 then 'Ginger'
when 3 then 'Oasis'
when 4 then 'Radisson'
else 'Oberoi'
end 
,WebsiteID=
case when WebsiteID=1 then  'GoIbibo'
when WebsiteID =2 then  'Booking.com'
when WebsiteID=3 then  'Trivago.com'
else  'MakemyTrip'
end

select * from Hoteldetails

