
use DB

select * from EmployeeDetails

--Aggregate Function

select AVG(Salary) as AverageSalary from EmployeeDetails

select MIN(Salary) as Minimum from EmployeeDetails

select MAX(Salary) as MAXIMUM from EmployeeDetails

select SUM(Salary) as Total from EmployeeDetails

select Count(Emp_No) as No_of_Employees from EmployeeDetails


-- Mathematical Function

SELECT ABS(-1.0), ABS(0.0), ABS(1.0);

SELECT CEILING(123.45), CEILING(-123.45), CEILING(0.0);  

SELECT ROUND(123.9994, 3), ROUND(123.9995, 3);   

SELECT FLOOR(123.45), FLOOR(-123.45), FLOOR($123.45);


-- String Function

SELECT ASCII('A') AS A, ASCII('B') AS B,   
ASCII('a') AS a, ASCII('b') AS b,  
ASCII(1) AS [1], ASCII(2) AS [2];

-- Generate the Email of employee according to city of employee

Select *,concat(Name,Emp_No,'@',City,'.com') as CityEmail from EmployeeDetails

Select Left(Name,3) as Starting_3_Words from EmployeeDetails

Select Right(Name,3) as End_3_Words from EmployeeDetails

Select Lower(Name) LowerCase,Upper(City) UpperCase,Len(Name) Length from EmployeeDetails

Select reverse(Name) Reverse_Name  from EmployeeDetails

SELECT LTRIM('     MS SQL SERVER.');

SELECT RTRIM ('MS SQL SERVER.      ');  

SELECT TRIM('     MS SQL SERVER.                 ');

SELECT REPLACE('MY SQL SERVER.','MY','Microsoft');  

Select SUBSTRING(Name,2,4) SubString from EmployeeDetails

-- DateTime Function

Select GETDATE() as Today_Date

select DATENAME(Day,SYSDATETIME()) as Day
select DATENAME(Month,current_timestamp) as Month
select DATENAME(Year,SYSDATETIME()) as Year


select Datediff(Day,'June 6 1998',SYSDATETIME()) as Day
select Datediff(Month,'June 6 1998',current_timestamp) as Month
select Datediff(Year,'June 6 1998',SYSDATETIME()) as Year

select DateAdd(Month,10,current_timestamp) as Month

