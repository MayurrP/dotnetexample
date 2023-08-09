USE [SQLTrainingDB]
GO



CREATE TABLE [student]
(
	[id] [int] NULL,
	[Name] [varchar](50) NULL,
	[Gender] [char](6) NULL
) 

INSERT INTO [student]
           ([id]
           ,[Name]
           ,[Gender])
     VALUES
           (15,'Amit1','Male'), (16,'Anna1','Female')
GO



alter table student with nocheck 
add constraint cn_gender
check(gender in ('Male','Female'))

alter table [student] with nocheck 
add constraint chk_V check([name] like 'V%')


alter table [student] nocheck constraint chk_V   --Disabling the check constraint
alter table [student] with nocheck check constraint chk_V