use SQLTrainingDB

CREATE TABLE   Emp_Table (
	 Emp_No   int   primary key,
	 Name   varchar (50) NULL,
	 DOB   varchar (50) NULL,
	 Gender   char (10) NULL,
	 Salary   int  NULL,
	 City   varchar (20) NULL,
     departmentid int
);

create table Dept_Table
(departmentid int,departmentname varchar(30))




INSERT      
INTO            Emp_Table(Emp_No, Name, DOB, Gender, Salary, City,departmentid)
VALUES     (100,'Mahesh','1965-12-01','Male',30000,'Delhi',1),
(101,'Suresh','1963-11-14','Male',34000,'Delhi',2),
(102,'Rajat','1969-12-21','Male',23000,'Shimla',1),
(103,'Kalpana','1961-12-01','Female',40000,'Goa',2),
(104,'Neha','1971-12-01','Female',19000,'Goa',1),
(105,'Sunita','1958-12-01','Female',50000,'Delhi',2)

insert into Dept_Table values (1,'IT'),(2,'Sales')

select * from Emp_Table
select * from Dept_Table


--Return employee record with maximum salary



--Return an employee with the highest salary and the employee's Department name



--Return highest salary, employee_name,Gender,City, department_name for each department
