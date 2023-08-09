Create table empdetails
(Id int not null primary key,
Name nvarchar(50),
Gender nvarchar(50),
DepartmentId int not null)


Insert into empdetails(Id, Name, Gender, DepartmentId)
Values(1,'Sam','Male',1),
(2,'Ram','Male',1),
(3,'Sara','Female',3),
(4,'Todd','Male',2),
(5,'John','Male',3),
(6,'Sana','Female',2),
(7,'James','Male',1),
(8,'Rob','Male',2),
(9,'Steve','Male',1),
(10,'Pam','Female',2)
 