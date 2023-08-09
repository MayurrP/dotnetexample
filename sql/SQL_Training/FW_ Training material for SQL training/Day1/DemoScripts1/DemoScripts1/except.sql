USE [SQLTrainingDB]




CREATE TABLE [dbo].[table1](
	[EmpID] [int] NULL,
	[EmpName] [varchar](50) NULL
) 



insert into table1(empid,empname) values (1,'vikas'),(2,'ashish'),(3,'manoj') 

CREATE TABLE [dbo].[table2](
	[EmpID] [int] NULL,
	[EmpName] [varchar](50) NULL
) 


insert into table2(empid,empname) values (4,'alok'),(2,'ashish'),(5,'rajat')

select * from table1
select * from table2


select * from table1
union
select * from table2

select * from table1
union all
select * from table2

select * from table1
intersect
select * from table2


select * from table1
except
select * from table2


select * from table2
except
select * from table1
