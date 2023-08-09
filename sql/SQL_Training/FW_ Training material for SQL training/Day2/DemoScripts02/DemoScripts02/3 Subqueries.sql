use jet2

select *,(select avg(salary) from EmployeeDetails) as AverageSalary 
,(select avg(salary) from EmployeeDetails)-Salary as DifferenceSalary
from EmployeeDetails

CREATE TABLE Discount_tbl(
	[ProductID] [int] NULL,
	[Rate] [decimal](5, 3) NULL
) 

CREATE TABLE Product_tbl(
	[ProductID] [int] NULL,
	[ProductName] [varchar](50) NULL,
	[Price] [int] NULL
) 


INSERT Discount_tbl ([ProductID], [Rate]) VALUES (1, CAST(0.010 AS Decimal(5, 3)))
INSERT Discount_tbl ([ProductID], [Rate]) VALUES (1, CAST(0.050 AS Decimal(5, 3)))
INSERT Discount_tbl ([ProductID], [Rate]) VALUES (3, CAST(0.100 AS Decimal(5, 3)))
INSERT Discount_tbl ([ProductID], [Rate]) VALUES (5, CAST(0.090 AS Decimal(5, 3)))
INSERT Discount_tbl ([ProductID], [Rate]) VALUES (5, CAST(0.190 AS Decimal(5, 3)))
INSERT Product_tbl ([ProductID], [ProductName], [Price]) VALUES (1, 'Prod1', 100)
INSERT Product_tbl ([ProductID], [ProductName], [Price]) VALUES (2, 'Prod2', 200)
INSERT Product_tbl ([ProductID], [ProductName], [Price]) VALUES (3, 'Prod3', 100)
INSERT Product_tbl ([ProductID], [ProductName], [Price]) VALUES (4, 'Prod4', 400)
INSERT Product_tbl ([ProductID], [ProductName], [Price]) VALUES (5, 'Prod4', 400)

select * from Product_tbl
select * from Discount_tbl

--Products which doesn't have discount using Left Outer Join

select * from Product_tbl p
left outer join Discount_tbl d 
on p.ProductID = d.ProductID
where Rate is NULL


--Products which doesn't have discount USING NOT IN

select * from Product_tbl
where ProductID NOT IN
(select distinct ProductID from Discount_tbl)

--List of all the employees who have greater salary than the average salary

select * from EmployeeDetails
where Salary > (select AVG(Salary) from EmployeeDetails)

--List of all the employees who have greater salary than Neha and Mahesh

select * from EmployeeDetails
where Salary > all (select Salary from EmployeeDetails
				where Name in('Neha','Mahesh'))

--Alternate

select * from EmployeeDetails
where Salary > all (select Salary from EmployeeDetails
				where Name ='Neha' or Name='Mahesh')

--Alternate

select * from EmployeeDetails
where Salary > (select MAX(Salary) from EmployeeDetails
				where Name in('Neha','Mahesh'))








