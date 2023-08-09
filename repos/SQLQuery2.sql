Create Procedure spGetEmployeeDetails
as
Begin
	Select Name,Gender from empdetails
End

exec spGetEmployeeDetails

