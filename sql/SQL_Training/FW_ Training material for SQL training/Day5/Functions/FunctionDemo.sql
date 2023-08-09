--Getdate() is a built in function
--DayOnly(@Date datetime) is a  user defined function

CREATE FUNCTION dbo.DayOnly(@Date datetime)
RETURNS varchar(12)
AS
BEGIN
RETURN CONVERT(varchar(12), @Date, 101)
END



SELECT  dbo.DayOnly(GETDATE()) as DAYONLY



