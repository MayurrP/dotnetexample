use jet2day4

Create table Employee
(
Employee_ID int Identity(1,1) primary key,
FIRST_NAME varchar(50) not null,
LAST_NAME varchar(50) not null,
SALARY int not null,
JOINING_DATE datetime not null,
DEPARTMENT varchar(25) not null
)

create table Bonus
(
Employee_REF_ID int,
BONUS_AMOUNT int,
BONUS_DATE datetime,
foreign key (Employee_REF_ID) references Employee(Employee_ID)
)

create table Title
(
Employee_REF_ID int,
Employee_TITLE varchar(25),
AFFECTED_FROM datetime,
foreign key (Employee_REF_ID) references Employee(Employee_ID)
)

USE [jet2day4]
GO

INSERT INTO Employee(FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)VALUES
('Priya','Gupta',100000,'2014-02-20 09:00:00','HR')

INSERT INTO Employee(FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)VALUES
('Nupur','Verma',80000,'2014-06-11 09:00:00','Admin'),
('Inderjeet','Chauhan',300000,'2014-02-20 09:00:00','HR'),
('Rahul','Sigh',500000,'2014-02-20 09:00:00','Admin'),
('Vivek','Dhahiya',500000,'2014-02-20 09:00:00','Admin'),
('Vipul','Bhardwaj',200000,'2014-06-11 09:00:00','Account'),
('Anil','Kumar',75000,'2014-01-20 09:00:00','Account'),
('Chetna','Singhal',90000,'2014-04-11 09:00:00','Admin')


select * from Employee

insert into Bonus(Employee_REF_ID,BONUS_AMOUNT,BONUS_DATE)values
(1,5000,'2016-02-20 00:00:00'),
(2,3000,'2016-06-11 00:00:00'),
(3,4000,'2016-02-20 00:00:00'),
(1,4500,'2016-02-20 00:00:00'),
(2,3500,'2016-06-11 00:00:00')

select * from Bonus

insert into Title(Employee_REF_ID,Employee_TITLE,AFFECTED_FROM)values
(1,'Manager','2016-02-20 00:00:00'),
(2,'Executive','2016-06-11 00:00:00'),
(8,'Executive','2016-06-11 00:00:00'),
(5,'Manager','2016-06-11 00:00:00'),
(4,'Asst. Manager','2016-06-11 00:00:00'),
(7,'Executive','2016-06-11 00:00:00'),
(6,'Lead','2016-06-11 00:00:00'),
(3,'Lead','2016-06-11 00:00:00')

select * from Title

--1.	Find the First Record From Employee Table with all the text data in the Upper Case?

select top(1) Employee_ID,Upper(FIRST_NAME),Upper(LAST_NAME),
SALARY,JOINING_DATE,UPPER(DEPARTMENT)
from Employee


--2.	Select the record of a person who has highest salary in the Employee?

select * from Employee
where Salary = (Select MAX(Salary) from Employee)

--3.	Write a query to find out duplicate records from the Employee
with duplicateCTE as
(select *,ROW_NUMBER() over(Partition by FIRST_NAME,LAST_NAME,SALARY order by Employee_ID) as Emp
from Employee
)
select * from duplicateCTE
where Emp > 1


--4.	Find the Last Record From The Employee Table?
	
	select top(1) * from Employee
	order by Employee_ID desc
		
--5.	Find the Last 3 Records From Employee Table?

select top(3) * from Employee
order by Employee_ID desc

--6.	Get 3 Highest Salaries From Employee Table?

select top(3) * from Employee
order by Salary desc
 

--7.	List the department names of the  Employee Table

select distinct(DEPARTMENT) from Employee

--8.	Display Odd Rows In EmployeeTable?

select * from Employee
where Employee_ID % 2 = 0

--9.	Display First Three Characters Of  FIRSTNAME From Employee Table.

select Left(FIRST_NAME,3) from Employee

--10.	Display the fullName by combining FirstName and LastName column along with
--the space between the FirstName and LastName

select concat(FIRST_NAME,' ',LAST_NAME) FULL_NAME from Employee

--11.	Display the employees in their sorted order by department in ascending 
--and then by salary in descending order

select * from Employee
order by DEPARTMENT asc, SALARY desc

--12.	Display From  Employees  With The First Name As “Vipul” And “Vivek” From EmployeeTable.

select * from Employee
where FIRST_NAME in ('Vipul','Vivek')

--13.	Display the list of employees who has joined in Feb 2014

select * From Employee
where Month(JOINING_DATE) = 02 and Year(JOINING_DATE) = 2014

--14.	Display all the columns along with the running total by salary 
--		for each department from the employee table

select *,Sum(SALARY) over(Partition by Department
order by EMPLOYEE_ID range between unbounded preceding and current row) as Running_Total 
from Employee

--15.	Display all the employees who never got the bonus using the Exists Clause

select * 
from Employee e
where not exists (select Employee_REF_ID from Bonus b
				where e.Employee_ID = b.Employee_REF_ID)

--16.	Display the 5th highest salary from the employee table

select top(1) * from 
(
select top(5) * from Employee order by salary desc) as T
order by T.SALARY

--17.	Display the list of employees who have same salary

select e1.Employee_ID,e1.FIRST_NAME,e1.LAST_NAME,e1.Salary
from employee e1 inner join employee e2
on e1.SALARY = e2.SALARY and e1.FIRST_NAME != e2.FIRST_NAME 
and e1.LAST_NAME != e2.LAST_NAME

--18.	Display the FirstName,LastName ,Employeetitle who have got the bonus of more than 4000

select distinct e.FIRST_NAME,e.LAST_NAME,t.Employee_TITLE
from Employee e inner join Title t
on e.Employee_ID = t.Employee_REF_ID
inner join Bonus b
on e.Employee_ID = b.Employee_REF_ID
where b.BONUS_AMOUNT > 4000

--19.	List the highest salary based on employetitle along with employee fullName
select * from Employee  select * from Bonus select * from Title

with cte as
(
select CONCAT(FIRST_NAME,' ',LAST_NAME) Full_Name,Employee_TITLE,SALARY
from Employee e inner join Title t
on e.Employee_ID = t.Employee_REF_ID
)
select * from cte where Salary = any(
			select MAX(Salary) Salary from cte group by Employee_TITLE 
	)



