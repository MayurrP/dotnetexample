USE [SQLTrainingDB]
GO



CREATE TABLE [dbo].[Product](
	[ProductId] [int] ,
	[PName] [varchar](50) ,
	[SID] [int] ,
 )


insert into Product(ProductId,PName,SID) values(1,'Keyboard',1),(2,'Monitor',2),(3,'AC',2),(4,'Bikes',3),(5,'Bulb',3),(6,'Processor',7)



CREATE TABLE [dbo].[Supplier](
	[SupplierID] [int] ,
	[CompanyName] [varchar](50) 
) 

insert into Supplier values(1,'TVSGold'),(2,'LG'),(3,'Bajaj'),(4,'Maruti'),(5,'Orient'),(6,'Tata')


select * from product
select * from supplier

--Inner Join

select product.*,supplier.companyname
from
product inner join supplier
on
product.sid=supplier.supplierID


select p.*,s.companyname
from
product p  inner join supplier s
on
p.sid=s.supplierID
where productid<3

--Left Outer Join or Left Join

select p.*,s.companyname
from
product p  left outer join supplier s
on
p.sid=s.supplierID


--Right Outer Join or Right Join
--List those companies which don't supply any product

select s.companyname
from
product p  right outer join supplier s
on
p.sid=s.supplierID
where 
p.PName is Null

--Full Join or Full Outer Join
select p.*,s.companyname
from
product p  full join supplier s
on
p.sid=s.supplierID

--Cross Join
select p.*,s.companyname
from
product p  cross join supplier s






