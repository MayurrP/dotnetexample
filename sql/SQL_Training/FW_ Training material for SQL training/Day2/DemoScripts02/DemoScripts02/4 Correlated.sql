USE jet2
--All the people associated with the company
create table HumanResource
(
    id int,portal.office.com
	name varchar(40)

)

--The employees of the company
create table tblEmployee
(
    id int,
	department varchar(40)

)


--Bonus provided by the company
create table tblSales
(
    id int,
	bonus int
)


insert into HumanResource values (1,'N1'),(2,'N2'),(3,'N3'),(4,'N4'),(5,'N5')
insert into tblEmployee values (2,'D1'),(4,'D4'),(5,'D2')
insert into tblSales values (1,1000),(2,2000),(2,3000),(2,4000),(3,4567),(3,2000),(4,2000),(4,4760),(5,7867)
insert into tblEmployee values (2,'D2')

select * from HumanResource
select * from tblEmployee
select * from tblSales



-- The list of employees along with the department Name who had got the bonus of 2000 using correlated sudquery

select h.id,h.name,e.department from 
HumanResource h inner join tblEmployee e on h.id=e.id
where 2000 in
(
     select bonus from tblSales s where s.id=e.id
)