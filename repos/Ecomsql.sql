CREATE TABLE supplier
( Id int NOT NULL primary key Identity(1,1),
  CompanyName varchar(50) NOT NULL,
  ContactName varchar(50),
  City varchar(50),
  Country varchar(50),
  Phone varchar(50),
  Fax varchar(50)
)
Go

insert into supplier(CompanyName,ContactName,City,Country,Phone,Fax)values
('Denim','Peter','Delhi','India','76656445','6657766'),
('Peter','Raman','Pune','India','45645677','4342323'),
('Khadi','Laxamn','Noida','India','5757677','4646345')
go

select * from supplier
go


CREATE TABLE customer
( Id int NOT NULL primary key Identity(1,1),
  FirstName varchar(50) NOT NULL,
  LastName varchar(50) NOT NULL,
  City varchar(50),
  Country varchar(50),
  Phone varchar(50)
)
Go

insert into customer(FirstName,LastName,City,Country,Phone) values
('Mayur','P','Gondia','India','2455343'),
('Swapnil','V','Chandrapur','India','4565455'),
('Aijaj','A','Kolhapur','','5353434'),
('Kalyani','M','Jalgaon','India','9686766')

select * from customer
go

CREATE TABLE OrderDetails
( Id int NOT NULL primary key Identity(1,1),
  OrderDate DateTime,
 CustomerId int,
 TotalAmount decimal,
 Constraint Fk_CustID  FOREIGN KEY (CustomerId)
    REFERENCES customer(Id)
)
Go

CREATE TABLE OrderItem
( Id int NOT NULL primary key Identity(1,1),
  OrderId int,
 ProductId int,
 UnitPrice decimal,
 Quantity decimal,
 Constraint Fk_OrderID  FOREIGN KEY (OrderId)
    REFERENCES OrderDetails(Id),
    Constraint Fk_ProductID  FOREIGN KEY (ProductId)
    REFERENCES Product(Id),
)
Go

CREATE TABLE Product
( Id int NOT NULL primary key Identity(1,1),
  ProductName varchar(60),
 SupplierId int,
 UnitPrice decimal,
 Package int,
 IsDiscontinued int,
 Constraint Fk_suppID  FOREIGN KEY (SupplierId)
    REFERENCES supplier(Id)
)
Go

