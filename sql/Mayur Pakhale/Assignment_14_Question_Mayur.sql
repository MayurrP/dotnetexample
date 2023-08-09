IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeArchive]') AND type in (N'U'))
ALTER TABLE [dbo].[EmployeeArchive] DROP CONSTRAINT [FK_EmployeeA_Department]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK_Employee_Department]
GO
/****** Object:  Table [dbo].[EmployeesRejoined]    Script Date: 03/07/2023 22:43:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeesRejoined]') AND type in (N'U'))
DROP TABLE [dbo].[EmployeesRejoined]
GO
/****** Object:  Table [dbo].[EmployeeArchive]    Script Date: 03/07/2023 22:43:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeArchive]') AND type in (N'U'))
DROP TABLE [dbo].[EmployeeArchive]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 03/07/2023 22:43:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
DROP TABLE [dbo].[Employee]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 03/07/2023 22:43:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Department]') AND type in (N'U'))
DROP TABLE [dbo].[Department]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 03/07/2023 22:43:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DeptId] [int] NOT NULL,
	[DeptName] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DeptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 03/07/2023 22:43:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmpId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[DeptId] [int] NOT NULL,
	[Project] [varchar](20) NULL,
	[Location] [varchar](50) NOT NULL,
	[DOJ] [datetime] NOT NULL,
	[Gender] [char](1) NOT NULL,
	[Salary] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeArchive]    Script Date: 03/07/2023 22:43:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeArchive](
	[EmpId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[DeptId] [int] NOT NULL,
	[Project] [varchar](20) NULL,
	[Location] [varchar](50) NOT NULL,
	[DOJ] [datetime] NOT NULL,
	[Gender] [char](1) NOT NULL,
	[Salary] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeesRejoined]    Script Date: 03/07/2023 22:43:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeesRejoined](
	[EmpId] [int] NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[LWD] [datetime] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Department] ([DeptId], [DeptName]) VALUES (1, N'HR')
GO
INSERT [dbo].[Department] ([DeptId], [DeptName]) VALUES (2, N'Admin')
GO
INSERT [dbo].[Department] ([DeptId], [DeptName]) VALUES (3, N'Account')
GO
INSERT [dbo].[Department] ([DeptId], [DeptName]) VALUES (4, N'Sales')
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 
GO
INSERT [dbo].[Employee] ([EmpId], [Name], [DeptId], [Project], [Location], [DOJ], [Gender], [Salary]) VALUES (1, N'Aditya', 1, N'P1', N'PUNE', CAST(N'2022-12-01T00:00:00.000' AS DateTime), N'F', 50000)
GO
INSERT [dbo].[Employee] ([EmpId], [Name], [DeptId], [Project], [Location], [DOJ], [Gender], [Salary]) VALUES (2, N'Tejaswini', 2, N'P2', N'DELHI', CAST(N'2021-06-02T00:00:00.000' AS DateTime), N'M', 40000)
GO
INSERT [dbo].[Employee] ([EmpId], [Name], [DeptId], [Project], [Location], [DOJ], [Gender], [Salary]) VALUES (3, N'Sanjeev', 3, N'P3', N'SIKKIM', CAST(N'2021-01-01T00:00:00.000' AS DateTime), N'F', 25000)
GO
INSERT [dbo].[Employee] ([EmpId], [Name], [DeptId], [Project], [Location], [DOJ], [Gender], [Salary]) VALUES (4, N'Pranila', 1, N'P1', N'GOA', CAST(N'2020-05-02T00:00:00.000' AS DateTime), N'M', 45000)
GO
INSERT [dbo].[Employee] ([EmpId], [Name], [DeptId], [Project], [Location], [DOJ], [Gender], [Salary]) VALUES (5, N'Sajjan', 2, N'P2', N'PUNE', CAST(N'2023-06-03T00:00:00.000' AS DateTime), N'M', 30000)
GO
INSERT [dbo].[Employee] ([EmpId], [Name], [DeptId], [Project], [Location], [DOJ], [Gender], [Salary]) VALUES (6, N'Ajay', 1, NULL, N'PUNE', CAST(N'2020-08-01T00:00:00.000' AS DateTime), N'M', 50000)
GO
SET IDENTITY_INSERT [dbo].[Employee] OFF


select * from Employee
GO
INSERT [dbo].[EmployeesRejoined] ([EmpId], [Name], [LWD]) VALUES (5, N'Sajjan', CAST(N'2020-05-30T00:00:00.000' AS DateTime))
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Department] FOREIGN KEY([DeptId])
REFERENCES [dbo].[Department] ([DeptId])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Department]
GO
ALTER TABLE [dbo].[EmployeeArchive]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeA_Department] FOREIGN KEY([DeptId])
REFERENCES [dbo].[Department] ([DeptId])
GO
ALTER TABLE [dbo].[EmployeeArchive] CHECK CONSTRAINT [FK_EmployeeA_Department]
GO

select * from [Department]
select * FROM Employee

--1.	Write a query to display count of males and females working in each department.

select DeptId,COUNT(Gender) MALE_Count,ISNULL(Null,0)FEMALE_Count from Employee 
where Gender = 'M'
group by DeptId
Union 
select DeptId,ISNULL(Null,0) MALE_Count,COUNT(Gender) FEMALE_Count from Employee 
where Gender = 'F'
group by DeptId


--2.	Write a query to display department name whose minimum salary is greater that the max salary of Accounts department.

;with cte as
(
select distinct DeptName,Min(Salary) over(partition by e.deptID) as Min_Sal from Employee e 
inner join Department d
on d.DeptId = e.DeptId
)
select * from cte
where Min_Sal > (select MAX(Salary) from Employee
						where DeptId = (Select DeptId from Department
										Where DeptName = 'Account'))


--3.	Write a query to display 3rd highest salary.
with cte as
(
select Top(3) *,ROW_NUMBER() over(order by salary desc) as Rank from Employee
)
select top(1) * from cte
order by Rank desc

--OR

select top 1 * from 
(select top 3 salary 
from employee order by salary desc) as T
order by T.salary 

--4.	Write a query to display common employees from EmployeesRejoined and Employee table.

select e.*,er.LWD from Employee e
inner join EmployeesRejoined er
on e.EmpId = er.EmpId

--5.	Create a view which should return below data
--a.	EmployeeName
--b.	Department Name
--c.	Salary
--d.	NoOfYearsInOrg (calculated field)- column name should be displayed as NoOfYearsInOrg in the result set.

select * from Employee
select * from Department
Go
Create view vEmployee as
(
select e.Name,d.DeptName,e.Salary,DATEDIFF(YEAR,e.DOJ,GETDATE()) as NoOfYearsInOrg from Employee e
inner join Department d on e.DeptId = d.DeptId
)

select * from vEmployee


--6.	WAQ to display employee name who joined first in each department.
-- (Expected output:
-- Example: For HR dept, Pranila joined first, so Pranila should appear in the output.)

;with cte as
(
select *,DENSE_RANK() over(partition by DeptID order by DOJ) as Joining_Nmber from Employee
)
select * from cte
where Joining_Nmber = 1;

--7.	Write a query to get employee names who joined in the month of December 2022.

select * from Employee
where MONTH(DOJ) = 12 and YEAR(DOJ) = 2022

--8.	Write a query to get names of the department which has less than 3 employees.

;with cte as
( 
select d.DeptName,Count(e.Name) over(partition by d.DeptID) as No_of_Emloyee from
Department d inner join Employee e on d.DeptId = e.DeptId
)
select distinct DeptName,No_of_Emloyee from cte
where No_of_Emloyee < 3

--9.	Write a function which will return employee id of the most recently joined employee.

Create Function Employee_Join()
Returns int
as
Begin
	Return
	Select EmpId from Employee
	Where DOJ = (select MAX(DOJ) from Employee)
End

select dbo.Employee_Join();

--10.	Write a trigger, whenever you insert data into Employee table, same entry should go to 
--EmployeeArchive table as well.

Create Trigger Employee_Archive_Trigger
ON Employee
After Insert
as
Begin
	Insert into Employee_Archive_Trigger(Name,DeptId,Project,Location,DOJ,Gender,Salary)
    	SELECT i.Name,i.DeptId,i.Project,i.Location,i.DOJ,i.Gender,i.Salary
	FROM inserted i
End


select * from Employee_Archive_Trigger

--11.	Write a SP using transactions which would increase salary for employees allocated to a project and 
--belonging to admin department by 10%, also if transaction fails, data should be reverted to its original state, 
--if transaction is successful update should work as expected.

Create Procedure Salary_Update
as
Begin
Begin Try
Begin Transaction
	Declare @Admin_Dept_Id Int = 2;

	Update Employee 
	Set Salary = Salary + (Salary * 0.10)
	From Employee Where DeptId = @Admin_Dept_Id 
	And Project is not null
Commit Transaction
	Print'Successfull'
End Try
Begin Catch
	Print'Error Occured'
End Catch
End

exec Salary_Update

--12.	WAQ to update project of employee ‘Raj’ to ‘P2’.
update Employee
set Project = 'P2'
Where Name = 'Raj'

--13.	Modify the above query so that it should update only once. Subsequent runs of the query should not update data.

Declare @Project_P2 NVARCHAR(5)='P2';
Declare @RajEmpId INT=6;

IF EXISTS(SELECT 1 FROM Employee WHERE EmpId=@RajEmpId AND Project=@Project_P2 )
BEGIN

	UPDATE Employee
	SET Project=@Project_P2 
	WHERE EmpId=@RajEmpId
END


--14.	Write a stored procedure which will take @filterColumn and @value as parameter and 
--based on these parameters, when the SP is executed, it should filter results based 
--on this filter(@filter=@value);(use dynamic query)

create or alter procedure GetFilteredDetails
@filter nvarchar(20),
@value nvarchar(20)
as
BEGIN

declare @query nvarchar(max)

set @query = 'select * from employee where ' + @filter+'='''+@value+''''
exec sp_executesql @query
END
GO

exec GetFilteredDetails empid, 2