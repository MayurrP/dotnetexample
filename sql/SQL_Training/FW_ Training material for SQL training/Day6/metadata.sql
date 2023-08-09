--Catalog View



select name,type_desc from sys.tables

select * from sys.views


--Information Schema
select * from  INFORMATION_SCHEMA.COLUMNS where TABLE_NAME='Product'
select * from INFORMATION_SCHEMA.VIEWS where  TABLE_SCHEMA='Sales'
select * from INFORMATION_SCHEMA.TABLES where TABLE_SCHEMA='Person'

--Dynamic Management Views
--Dynamic management views (DMVs) and dynamic management functions (DMFs) return server state information 
--that can be used to monitor the health of a server instance,diagnose problems, and tune performance.
select * from sys.dm_os_sys_info
--Index Fragmentation , CPU RAM Sessions Usage ,Commands taking more than five minutes  etc

--System Stored Procedure and function
select COLUMNPROPERTY(OBJECT_ID('Person.ContactType'),'Name','precision') as 'column length'
use test
go
select COLUMNPROPERTY(OBJECT_ID('Student'),'Name','precision') as 'column length'

exec sp_columns @table_name='Department', @table_owner='HumanResources'


select OBJECT_ID('Person.ContactType')

select object_name('485576768')
