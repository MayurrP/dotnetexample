
CREATE TABLE [dbo].[Employee](
	[EmpID] [int] NULL,
	[EmpName] [varchar](50) NULL,
	[MgrID] [int] NULL
) 

insert into Employee(EmpID,EmpName) values(1,'ashish')
insert into Employee(EmpID,EmpName,MgrID) values(2,'arun',1),(3,'naveen',1),(4,'sanjay',3),(5,'ankit',3),(6,'rajesh',4)


select * from Employee
select * from Employee


--select EmpID,EmpName,'No Manager' as Manager from employee where MgrID is null
--union 
select e.EmpID,e.EmpName,isnull(m.EmpName,'No Manager') as Manager
from
employee e left outer join  employee m
on
e.MgrID=m.EmpID