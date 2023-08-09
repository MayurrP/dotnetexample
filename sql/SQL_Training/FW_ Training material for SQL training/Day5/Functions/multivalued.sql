use AdventureWorks2008
go

create function dbo.getempdetail_fun(@empid int)
 returns @empdetail table
 (	
	employeeid int,
	firstname varchar(50),
	lastname varchar(50),
	dep_name varchar(50),
	jobtitle varchar(50)
)
as 
begin
declare @firstname varchar(50),@lastname varchar(50)
select @firstname=firstname,@lastname=lastname from person.person where businessentityid=@empid

declare @dep_id int
select @dep_id=departmentid from humanresources.EmployeeDepartmentHistory where BusinessEntityID=@empid

declare @dep_name varchar(50)
select @dep_name=name from humanresources.department

declare @jobtitle varchar(50)
select @jobtitle=jobtitle from humanresources.employee where businessentityid=@empid
 
 insert @empdetail values(@empid,@firstname,@lastname,@dep_name,@jobtitle)
 return
 end

select * from dbo.getempdetail_fun(1)