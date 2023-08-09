create database TestDbAssign
Go

USE TestDbAssign
GO

/****** Object:  Table [dbo].[Airport]    Script Date: 7/5/2023 1:50:10 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employee](
	[Id] [int] NULL,
	[FirstName] [varchar](20) NULL,
	[LastName] [varchar](20) NULL,
	[Department] [varchar](30) NULL,
	[Salary] [decimal](18,2) NULL,
	[ManagerId] [int] NULL,
) ON [PRIMARY]
GO

INSERT INTO [dbo].[Employee] VALUES
(1,'Angelika','Voules','Marketing',5293.74,2),
(2,'Rozelle','Swynley','Marketing',8295.08,18),
(3,'Warren','Willey','Engineering',9126.72,19),
(4,'Lynelle','Whiten','Management Board',10716.15,NULL),
(5,'Consolata','Roman','Legal',8456.06,4),
(6,'Hoebart','Baldock','Research and Development',4817.34,20),
(7,'Starlene','Watkiss','Accounting',6541.48,4),
(8,'Barde','Ribbens','Marketing',4852.87,2),
(9,'Lorne','Philipsen','Engineering',7235.59,3),
(10,'Pedro','Naldrett','Research and Development',5471.62,20),
(11,'Brina','Dillinger','Marketing',6512.17,2),
(12,'Verile','Sonley','Research and Development',4574.41,20),
(13,'Noble','Geerling','Research and Development',8391.18,20),
(14,'Garey','MacAdam','Accounting',3829.88,7),
(15,'Theo','Sorrell','Engineering',6441.67,3),
(16,'Erminie','Gelling','Research and Development',8590.70,20),
(17,'Loralie','Koop','Accounting',5248.46,7),
(18,'Cal','Andrey','Management Board',11258.82,NULL),
(19,'Quincey','Gamell','Management Board',11366.52,NULL),
(20,'Janith','McGiffie','Research and Development',7428.83,19);


-- using subquery
select * from Employee e
inner Join
(
select Department,AVG(Salary) as AvgSal from Employee e1
group by Department
) a
on e.Department = a.Department

--using cte
with cte as
(
select *,AVG(Salary) over(Partition by Department) as AvgSal from Employee
)
select * from cte

------

