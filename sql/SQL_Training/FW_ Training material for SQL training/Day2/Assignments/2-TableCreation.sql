USE  [SQLTrainingDB]

CREATE TABLE CustomerDetails
(
CustomerID     int   IDENTITY   PRIMARY KEY,
C_Name   varchar(50)      NOT NULL,
C_Address       varchar(50)      NOT NULL,
City           varchar(50)      NOT NULL,
C_State          varchar(50)          NOT NULL,
PostalCode     varchar(20)      NOT NULL,
Phone          varchar(25)         NOT NULL UNIQUE,
DateModified   datetime    NOT NULL DEFAULT GETDATE ()
)



insert into  CustomerDetails(C_Name,C_Address,City,C_State,PostalCode ,Phone,DateModified)  values
('Arjun','Address1','New Delhi','Delhi',110027,445564321,'2017-12-12')


insert into  CustomerDetails(C_Name,C_Address,City,C_State,PostalCode ,Phone )  values
('Arjun','Address1','New Delhi','Delhi',110027,987654321)

select * from CustomerDetails


CREATE TABLE Sales
(
	SalesID      int   IDENTITY  PRIMARY KEY,
	CustomerID   int  NOT NULL
	FOREIGN KEY REFERENCES CustomerDetails(CustomerID),
	SalesDatetime    datetime    NOT NULL,
	empid   int              NOT NULL
)

insert into Sales (CustomerID,SalesDatetime,empid) values(1,getdate(),1)




create table employeetable
(
    empid int ,
    empname varchar(30) Not Null,
    gender char(1) Not Null,
    telnumber varchar(15) Not Null,
	empaddress varchar(40) Not NULL
);

alter table employeetable
alter column empid int not null 


alter table employeetable
alter column gender char(6) 

alter table employeetable
add constraint pk_empid
primary key (empid)

exec sp_helpconstraint 'employeetable'

alter table employeetable
add 
constraint DF_employeetable
default 'UNKNOWN' for empaddress




alter table employeetable
add constraint uk_employeetabletelnumber
unique (telnumber)


alter table sales
add constraint FK_employeetablesales
foreign key (empid) references employeetable(empid)


select * from Sales
select * from employeetable


alter table employeetable
drop constraint pk_empid

--sp_helpconstraint