create database jet2fun
use jet2fun
go

create table Customer
( id int identity,
  name varchar(50)
  )

  create table sales
  (
      id int,
	  salesamount int
  )

  insert into Customer (name) values ('Alan'),('Gary'),('Bob'),('Pat'),('Mike')

  insert into sales (id,salesamount) values
  (1,100),(1,90),(1,30),(2,100),(2,150),(2,80),(4,100),(4,123),(4,40),(4,30),
  (5,100),(5,23),(5,140),(5,230)


  select * from Customer
  select * from sales


  CREATE FUNCTION dbo.fn_GetTopOrders(@custid AS int, @n AS INT)
  RETURNS TABLE
AS
RETURN
  SELECT TOP(@n) *
  FROM sales
  WHERE ID = @custid
  ORDER BY salesamount DESC


  SELECT   C.id,C.name,O.salesamount
FROM 
	 Customer AS C
CROSS APPLY
	dbo.fn_GetTopOrders(C.ID, 2) AS O