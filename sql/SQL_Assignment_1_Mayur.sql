CREATE DATABASE TestDb;

USE TestDb
Go

CREATE TABLE Flight1 (
FlightNumber VARCHAR(5),
Airline VARCHAR(10),
Source VARCHAR(10),
Destination VARCHAR(10)
);

CREATE TABLE Booking1 (
FlightNumber VARCHAR(5),
PassengerCount INTEGER,
SeatCount INTEGER,
DepartureDateTime DATETIME
);

INSERT INTO Flight1 VALUES
('A123J','Jet2', 'Mumbai', 'Kolkata'),
('B123J','Jet2', 'Mumbai', 'Delhi'),
('A456I','Indigo', 'Delhi', 'Indore'),
('C578J','Jet2', 'Indore', 'Pune'),
('C789I','Indigo', 'Pune', 'Chennai'),
('B556G','GoAir', 'Chennai', 'Bangalore'),
('N123J','Jet2', 'Mumbai', 'Kolkata'),
('M123J','Jet2', 'Mumbai', 'Delhi'),
('P456I','Indigo', 'Delhi', 'Indore'),
('D578G','GoAir', 'Indore', 'Pune'),
('K789J','Jet2', 'Pune', 'Chennai'),
('M556J','GoAir', 'Chennai', 'Bangalore'),
('N756J','Jet2', 'Pune', 'Delhi');

INSERT INTO Booking1 VALUES
('A123J',91, 100, '2022-08-16 10:00:00'),
('B123J',185, 200, '2022-08-10 10:00:00'),
('A456I',160, 200, '2022-08-11 10:00:00'),
('C578J',100, 100, '2022-08-12 10:00:00'),
('C789I',80, 200, '2022-08-15 10:00:00'),
('B556G',189, 200, '2022-09-01 10:00:00'),
('N123J',45, 100, '2022-08-16 10:00:00'),
('M123J',98, 200, '2022-08-10 10:00:00'),
('P456I',140, 200, '2022-08-15 10:00:00'),
('D578G',70, 100, '2022-08-12 10:00:00'),
('K789J',190, 200, '2022-08-18 10:00:00'),
('M556J',200, 200, '2022-09-05 10:00:00'),
('N756J',149, 300, '2022-09-05 10:00:00');

--Answer Following questions considering today's date as 1st August 2022

--1. Flight which is fully occupied i.e passengercount matches the seat count

select FlightNumber,PassengerCount,SeatCount
from Booking1
where PassengerCount = SeatCount

--2. Number of Flights where Airline is Jet2

Select Count(Airline) Number_of_Jet2_Flights
FROM Flight1
where Airline = 'Jet2'

--3. Number of flights which are going to be departed on or before 11th August 2022

select Count(Flightnumber) No_Of_Flights
From Booking1
Where DepartureDateTime < '2022-08-12'

--4. Flights for which booking data is not available

select * from Flight1 f
where not exists (select FlightNumber
				from Booking1 b
				where f.FlightNumber = b.FlightNumber)

--Alternate
select f.* from Flight1 f
left join Booking1 b
on f.FlightNumber = b.FlightNumber
where b.PassengerCount is NULL

--5. Percentage of seats occupied in each flight considering each passenger will occupy one seat

select *,((passengercount*1.0)/seatcount)*100 Percentage_of_seats_occupied
from Booking1


--6. Number of flights where destination is Pune

select Count(Destination) Number_of_Flights_FOR_Pune
From Flight1
where Destination = 'Pune';

--7. Number of passengers who are going to travel to Pune

select Sum(PassengerCount) Number_of_Passengers_FOR_Pune from Booking1 b
inner join Flight1 f
on b.FlightNumber = f.FlightNumber
where Destination = 'Pune';

--8. Number of passengers who are going to board from Pune

select Sum(PassengerCount) Number_of_Bord_Form_Pune from Booking1 b
inner join Flight1 f
on b.FlightNumber = f.FlightNumber
where Source = 'Pune';

--9. Number of Passengers who are going to Board from Pune where Airline is Jet2
select Sum(PassengerCount) Number_of_Bord_Form_Pune_With_Jet2 from Booking1 b
inner join Flight1 f
on b.FlightNumber = f.FlightNumber
where Source = 'Pune' and Airline = 'Jet2';


--10. Number of Flights where travel date is between 15 August and 5th September (Both days included)

select Count(Flightnumber) No_Of_Flights
From Booking1
Where DepartureDateTime between '2022-08-14' and '2022-09-06'

--11. Number of Flights where travel date is between 15 August(Including) and 5th September(Excluding)

select Count(Flightnumber) No_Of_Flights
From Booking1
Where DepartureDateTime between '2022-08-14' and '2022-09-05'

--12. Number of Flights where travel date is between 15 August(Excluding) and 5th September(Excluding)

select Count(Flightnumber) No_Of_Flights
From Booking1
Where DepartureDateTime between '2022-08-15' and '2022-09-05'

--13. Flights which are occupied less than 50%

select * from booking1
where passengercount < seatcount / 2
