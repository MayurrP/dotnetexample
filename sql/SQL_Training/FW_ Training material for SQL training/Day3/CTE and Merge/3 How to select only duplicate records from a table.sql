use jet2
go

select * from Employee

go


delete from Employee

go

DBCC checkident(Employee,reseed,0)
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








--Select only duplicate records from a table

with DuplicateCTE as
(
select *,count(*) over(partition by name,salary,designation order by Empid desc) as RowNum
from Employee
)
select * from DuplicateCTE


select * from Employee e
inner join
(
select name,salary,designation,count(*) as RowCountOutput
from Employee
group by name,Salary,Designation
) as T
on e.Name = T.Name and e.Salary = T.Salary and e.Designation = T.Designation
where T.RowCountOutput > 1

--Please make sure you have executed the previous demo

with cte as
(
select name,salary,designation,count(*) as RowCountOutput
from Employee
group by name,Salary,Designation
) 
select * from Employee e inner join cte T
on e.Name = T.Name and e.Salary = T.Salary and e.Designation = T.Designation
where T.RowCountOutput > 1

