Create Table EmployeeDetails
(
 Id int Identity(1,1) primary key,
 Name varchar(25),
 Salary int,
 Department varchar(25)
)

Go

Insert into EmployeeDetails(Name,Salary,Department) 
values('Mayur',45833,'Development')

Insert into EmployeeDetails(Name,Salary,Department) 
values('Swapnil',45833,'Development')

Insert into EmployeeDetails(Name,Salary,Department) 
values('Aijaj',45833,'Development')

Insert into EmployeeDetails(Name,Salary,Department) 
values('Abhishekh',45833,'Data')

GO

Create Procedure SPEmployeeDeptDetails
as
Begin
	Select Id,Name,Department,Salary from EmployeeDetails
End