

ALTER DATABASE Intran
SET READ_COMMITTED_SNAPSHOT ON
WITH ROLLBACK IMMEDIATE

dbcc useroptions


select * from Employee



update Employee set name='Anurag' where Emp_No=102

update Employee  name='Anuj' where Emp_No=102

--Note :  Please disable the READ_COMMITTED_SNAPSHOT after the practice