use jet2

create table UpdateCommand
(
Id int Identity(1,1) primary key,
A_col1 float not null,
A_col2 float not null,
A_col3 float not null,
B_col1 float not null,
B_col2 float not null,
B_col3 float not null,
Difference float default null
)

-- drop table UpdateCommand

insert into UpdateCommand(A_col1,A_col2,A_col3,B_col1 ,B_col2,B_col3)
values(101.1254,99.56,2.45,101.1254,99.56,2.45),
(1872.232,1754.88,50.40,1871.00,1754.88,50.40),
(324.50,324.00,1.20,324.50,323.00,1.20),
(2141.00,2140.00,24.00,2141.00,2140.00,20.00),
(1111.1111,1000.00,12.00,1111.00,999.00,12.00),
(2222.2222,2000.00,22.00,2222.2222,2220.00,20.20)


select *from UpdateCommand

;WITH
	[Updated CTE Table] (id, A_col1, A_col2, A_col3, B_col1, B_col2, B_col3, [A1-B1], [A2-B2], [A3-B3], [Difference])
	AS 
	(
		select id, A_col1, A_col2, A_col3, B_col1, B_col2, B_col3, A_col1-B_col1, A_col2-B_col2, A_col3-B_col3, [Difference] from UpdateCommand
	)
	Update [Updated CTE Table] 
	SET [Difference] = 
	CASE
		when [A1-B1] > 0 and [A2-B2] > 0 or [A1-B1] > 0 and [A3-B3] > 0 or [A2-B2] <> 0 and [A3-B3] > 0 then 4
		when [A1-B1] <> 0 then 1
		when [A2-B2] <> 0 then 2
		when [A3-B3] <> 0 then 3
		else 0
	End


	select *from UpdateCommand
