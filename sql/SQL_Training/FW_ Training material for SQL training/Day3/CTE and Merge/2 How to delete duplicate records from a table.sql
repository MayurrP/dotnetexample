use jet2
go


CREATE TABLE dbo.Employee
( 
EmpID int IDENTITY(1,1) NOT NULL, 
Name varchar(55) NULL, 
Salary decimal(10, 2) NULL, 
Designation varchar(20) NULL
 ) 
 go

 insert into Employee (Name,Salary,Designation) values ('Rahul',6000,'TL')
  insert into Employee (Name,Salary,Designation) values ('Aslam',3500,'SE')
   insert into Employee (Name,Salary,Designation) values ('Rohit',5000,'SSE')
    insert into Employee (Name,Salary,Designation) values ('Aslam',3500,'SE')
	 insert into Employee (Name,Salary,Designation) values ('Rahul',6000,'TL')
	  insert into Employee (Name,Salary,Designation) values ('Sagar',3500,'SE')
	   insert into Employee (Name,Salary,Designation) values ('Rajesh',4000,'SE')

	   go

	   select * from Employee
	   go

-----


with DuplicateCTE as
(
select *,count(*) over(partition by name,salary,designation order by Empid desc) as RowNum
from Employee
)
delete from DuplicateCTE where RowNum > 1


select * from Employee e
inner join
(
select name,salary,designation,count(*) as RowCountOutput
from Employee
group by name,Salary,Designation
) as T
on e.Name = T.Name and e.Salary = T.Salary and e.Designation = T.Designation
where T.RowCountOutput > 1



