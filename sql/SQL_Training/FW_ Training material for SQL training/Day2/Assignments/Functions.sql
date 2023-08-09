use [SQLTrainingDB]
go

select eomonth(getdate()),eomonth(getdate(),1),eomonth(getdate(),-1)

create table SalesCompare
(
     Monthend date,
	 deptID int,
	 TargetSales int,
	 ActualSales int
)

declare @dept int =1
declare @count int =0
while(@count<37)
begin
    insert into  SalesCompare ( Monthend,deptID,TargetSales,ActualSales)
	select eomonth('2009-01-01',@count) MonthlySales,@dept as DepartmentName,convert(int,rand()*100) TargetSales,convert(int,rand()*100) ActualSales
	 insert into  SalesCompare ( Monthend,deptID,TargetSales,ActualSales)
	select eomonth('2009-01-01',@count),@dept+1 as DepartmentName,convert(int,rand()*100),convert(int,rand()*100)
	 insert into  SalesCompare ( Monthend,deptID,TargetSales,ActualSales)
	select eomonth('2009-01-01',@count),@dept+2 as DepartmentName,convert(int,rand()*100),convert(int,rand()*100)
	set @count=@count+1
end


select 
Year(Monthend)
,choose(deptID,'Department1','Department2','Department3')
,TargetSales
,ActualSales
,iif(TargetSales<ActualSales,'Target Achived','Target Not Achieved')
 from SalesCompare


 select 
Year(Monthend)
,choose(deptID,'Department1','Department2','Department3')
,sum(TargetSales)
,sum(ActualSales)
,iif(sum(TargetSales)<sum(ActualSales),'Target Achived','Target Not Achieved')
 from SalesCompare
 group by Year(Monthend),deptid	


