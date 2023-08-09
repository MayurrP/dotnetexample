use SQLTrainingDB

create table Movies
(
	MovieID   Int,  
	MovieName   varchar(30),  
	Category   char(2), 
	Language   varchar(25)
)


create table Shows
(
    Id  Int,
	DateandTime datetime,	
	MovieID int,	
	Price int

)

insert into Movies(MovieID,MovieName,Category,Language)
values 
(100,'Speed','UA','English')
,(101,'Hanuman','U','Hindi')
,(102,'Terminator','UA','English')
,(103,'Matrix','UA','English')
,(104,'MyFriend Ganesha','U','Hindi')


insert into Shows(Id ,DateandTime,MovieID,Price)
values
(1,'2009-07-21 12:00:00',100,120)
,(2,'2009-07-21 16:00:00',100,150)
,(3,'2009-07-21 19:00:00',101,175)
,(4,'2009-07-22 11:30:00',102,150)
,(5,'2009-07-21 23:30:00',102,175)
,(6,'2009-07-22 09:30:00',103,100)
,(7,'2009-07-21 11:30:00',103,120)
,(8,'2009-07-22 14:30:00',103,150)
,(9,'2009-07-21 14:30:00',103,150)
,(10,'2009-07-21 20:30:00',104,175)



select * from Movies
select * from Shows

--1)	Select all movies where language is Hindi.

select * from Movies 
where Language = 'Hindi'

--2)	Retrieve movieid , name which starts from ‘H’
 
select MovieID,MovieName from Movies
where MovieName like 'H%'

--OR

select MovieID,MovieName from Movies
where MovieName like 'H______'

--3)	Select all shows details along with movie details whose languages is 'English'

select m.*,s.DateandTime,s.Price
from Movies as m inner join Shows as s 
on m.MovieID = s.MovieID 
where Language = 'English'


--4)	Select number of shows running per movie. You need to provide movie name along with corresponding number of shows.

select m.MovieName,count(DateandTime)
from Movies as m inner join Shows as s
on m.MovieID = s.MovieID
group by MovieName


--5)	Show the total price of all shows whose movie name is 'MATRIX'

 select m.MovieName,SUM(s.Price) TotalPrice
from Movies as m inner join Shows as s
on m.MovieID = s.MovieID
where MovieName = 'Matrix'
group by MovieName


--6)	Show the maximum  price of the show whose movie name  is 'Terminator'

select m.MovieName,MAX(s.Price) TotalPrice
from Movies as m inner join Shows as s
on m.MovieID = s.MovieID
where MovieName = 'Terminator'
group by MovieName


--7)	Show total count of shows on each day for each movie name
 
select m.MovieName,cast(s.DateandTime as date) MovieDate,count(s.MovieID)
from Movies as m inner join Shows as s
on m.MovieID = s.MovieID
group by MovieName,cast(s.DateandTime as date) 

