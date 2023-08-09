dbcc useroptions


begin tran
update Employee set name='Anusha' where Emp_No=102
commit


BEGIN TRAN
DECLARE @I INTEGER
SET @I=0
WHILE (@I<20)
BEGIN
select * from Employee
WAITFOR DELAY '00:00:01'
set @i=@i+1
END
