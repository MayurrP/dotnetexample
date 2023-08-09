USE [SQLTrainingDB]
GO


CREATE TABLE [dbo].[demo](
	[id] [int]  ,
	[datecol] [datetime]  
) 

insert into demo values(1,getdate())

select getdate()

select * from demo

CREATE TABLE [dbo].[demo1](
	[id] [int]  ,
	[datecol] [datetime2](7)  
) 

insert into demo1 values(1,getdate())

select * from demo1

Declare @dt7 datetimeoffset
SET @dt7='2019-02-02 21:49:09.1333333 +05:30'
print @dt7
