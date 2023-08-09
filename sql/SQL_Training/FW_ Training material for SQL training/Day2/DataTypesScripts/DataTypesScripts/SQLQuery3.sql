--Implicit Conversion



declare @num tinyint
set @num=25
declare @num1 smallint
set @num1=@num
Print @num1

--Cast in ANSI standard Convert is used in SqlServer for explicit conversion

declare @val varchar(10)
set @val='12'
declare @num tinyint
set @num=CONVERT(int, @val) * 10
Print @num
--set @num=CAST(@val as int) * 10
--print @num

set @num=@val + 10
Print @num

--Precedence order of int is greater than varchar
--Sql Server is trying to convert overall expression to integer

declare @val varchar(15)
set @val='Page Number '
declare @num int
set @num=2
--Print (@val + @num) --Overall expression will be converted to int type because of preference
Print(@val + convert(varchar,@num))


select getdate()
select convert(varchar(20),getdate(),103)

select cast(getdate() as varchar(20))

