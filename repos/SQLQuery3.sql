Create Procedure spGetEmpwithDeptId
as
Begin
	Select Id,Name,DepartmentId from empdetails
End

exec spGetEmpwithDeptId