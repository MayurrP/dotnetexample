CREATE TABLE Books (
    BookId INT PRIMARY KEY IDENTITY(1,1),
    Title NVARCHAR(100) NOT NULL,
    Author NVARCHAR(100) NOT NULL,
    PublicationYear INT,
    ISBN NVARCHAR(20) NOT NULL,
    Genre NVARCHAR(50),
    Price DECIMAL(10, 2) NOT NULL,
    InStock BIT NOT NULL DEFAULT 1
);
go

insert into Books(Title,Author,PublicationYear,ISBN,Genre,Price,InStock) values
('Clara Callan','Richard Bruce Wright',2001,0002005018,'Second',300,5),
('Decision in Normandy','Carlo DEste',1991,0060973129,'First',250,7),
('The Mummies of Urumchi','Gina Bari Kolata',2006,0374157065,'Third',500,3),
('PLEADING GUILTY','Scott Turow',2008,346364566,'First',600,3)
insert into Books(Title,Author,PublicationYear,ISBN,Genre,Price,InStock) values
('Callan','Richard Bruce Wright',200,234234342,'FIRST',350,3),
('Decision in French','Carlo DEste',1995,4323423423,'First',450,4),
('The Mummies','Gina Bari Kolata',2009,2341223232,'SECOND',342,3),
('GUILTY','Scott Turow',2020,542232323,'FIFTH',544,9)
go

select * From Books
go


create table tblAuthor
(
AuthorId int primary key Identity(1,1),
AuthorName varchar(60),
Age int,
No_Of_Books_Written int
)
go

insert into tblAuthor(AuthorName,Age,No_Of_Books_Written) values
('Mark P. O. Morford',35,7),
('Richard Bruce Wright',32,3),
('Carlo DEste',45,5),
('Dennis Ritche',43,6),
('Gina Bari Kolata',29,2),
('NagaChaitnya',31,4)
go

select * from tblAuthor
go

SELECT BookId,Title,AuthorId,Author,Age
                    FROM Books b INNER JOIN tblAuthor a
                    on b.Author = a.AuthorName