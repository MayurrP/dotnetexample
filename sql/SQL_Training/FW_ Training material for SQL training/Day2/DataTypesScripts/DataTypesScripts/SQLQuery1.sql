USE [SQLTrainingDB]
GO


CREATE TABLE [dbo].[Unicodetest](
	[col1] [char](10),
	[col2] [nchar](10) 
) 

insert into [dbo].[Unicodetest] values 
('Hello',N'Hello')
,('Hello',N'??????')
,('??????',N'??????')
