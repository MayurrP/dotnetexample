--Session 1
set transaction isolation level snapshot

BEGIN TRAN

DECLARE @I INTEGER
SET @I=0
WHILE (@I<20)
BEGIN
SELECT * FROM Employee
	WAITFOR DELAY '00:00:01'
	SET @I=@I+1
	END
COMMIT



--Other Sessions



UPDATE Employee SET NAME='ANU' WHERE Emp_No=102


UPDATE Employee SET NAME='AJAY' WHERE Emp_No=103



UPDATE Employee SET NAME='AMIT' WHERE Emp_No=102

insert into Employee values (109,'Amar','1978-12-12','Male',45000,'Male')