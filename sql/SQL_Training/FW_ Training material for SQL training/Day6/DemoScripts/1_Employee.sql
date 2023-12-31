



Create database InTran
--go



USE [InTran]
GO

CREATE TABLE Employee (
	[Emp_No] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[DOB] [varchar](100) NULL,
	[Gender] [varchar](100) NULL,
	[Salary] [int] NULL,
	[City] [varchar](20) NULL
) 

GO

insert into Employee ([Emp_No],[Name],[DOB],[Gender],[Salary],[City]) values
(100,'Mahesh','1965-12-01','Male',30000,'Delhi'),
(101,'Suresh','1963-11-14','Male',34000,'Delhi'),
(102,'Rajat','1969-12-21','Male',23000,'Shimla'),
(103,'Kalpana','1961-12-01','Female',40000,'Goa'),
(104,'Neha','1971-12-01','Female',19000,'Goa'),
(105,'Sunita','1958-12-01','Female',50000,'Delhi')


--Dirty Read Problem

--Session 1
Begin tran
update Employee set salary =36000 where emp_no=102
rollback

--Session2
Select * from Employee (nolock)
where emp_no=102


--Non Repeatable Read Problem

--Session 1
Begin tran
Select * from Employee 
where emp_no=102

--Commit

--Session 2
update Employee set salary =36000 where emp_no=102


--Phantom Read Problem

--Session 1
Begin tran
Select * from Employee 
where dob like '196%'

--Commit

--Session 2
insert into Employee ([Emp_No],[Name],[DOB],[Gender],[Salary],[City]) values
(106,'Anil','1963-12-29','Male',45000,'Dehradun') 


--Lost Update

--Session 1

Begin tran
update Employee set salary =23000 where emp_no=102

--Commit



--Session 2

Begin tran
update Employee set salary =38000 where emp_no=102

--Commit



--Read Uncommitted Isolation Level


--Session 1

select * from Employee


Begin tran
update Employee set salary =23000 where emp_no=102

--Rollback

--Session 2

set transaction isolation level read uncommitted

select * from Employee


--Read Committed Isolation Level


--Session 1

select * from Employee


Begin tran
update Employee set salary =36000 where emp_no=102

--Rollback

--Commit

--Session 2

set transaction isolation level read committed

select * from Employee



--Repeatable Read Isolation Level

--Session 1

set transaction isolation level repeatable read  

Begin tran
Select * from Employee 
 

--Commit

--Session 2
begin tran
update Employee set salary =38000 where emp_no=102

--Rollback
--Commit


--Phantom Read Problem Still exists
insert into Employee ([Emp_No],[Name],[DOB],[Gender],[Salary],[City]) values
(107,'Anil','1963-12-29','Male',45000,'Dehradun') 



--Serializable Isolation Level

--Session 1

dbcc useroptions

set transaction isolation level serializable 


Begin tran
Select * from Employee 
where dob like '196%'

--Commit

--Session 2
insert into Employee ([Emp_No],[Name],[DOB],[Gender],[Salary],[City]) values
(108,'Anil','1963-12-29','Male',45000,'Dehradun') 

Select * from Employee 


--Snapshot isolation Level

--Session 1
Alter Database Intran
Set Allow_Snapshot_Isolation ON

set transaction isolation level snapshot

begin tran
update Employee set salary =50000 where emp_no=105

--commit

--Session 2




set transaction isolation level snapshot

begin tran
update Employee set salary =58000 where emp_no=105
--commit




