create table dbo.tblPerson
(
Id int primary key identity(1,1),
Name Varchar(60),
Email varchar(60),
GenderId int
)
go


insert into tblPerson values(1,'Mayur','mayur@gmail.com',1),
(2,'Swapnil','swapnil@gmail.com',1),
(3,'Aijaj','aijaj@gmail.com',1),
(4,'Kalyani','kalyani@gmail.com',2)

go

select * from tblPerson
go



