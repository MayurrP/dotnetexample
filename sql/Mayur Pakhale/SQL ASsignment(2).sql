Create database TestDb

USE TestDb

CREATE TABLE Flight2A (
FlightNumber VARCHAR(5),
Airline VARCHAR(10),
Source VARCHAR(10),
Destination VARCHAR(10)
);

CREATE TABLE Flight2B (
FlightNumber VARCHAR(5),
Airline VARCHAR(10),
Source VARCHAR(10),
Destination VARCHAR(10)
);

CREATE TABLE Booking2A (
FlightNumber VARCHAR(5),
PassengerCount INTEGER,
SeatCount INTEGER,
DepartureDateTime DATETIME
);

CREATE TABLE FlightRatings (
FlightNumber VARCHAR(5),
Rating DECIMAL(18,2)
);


INSERT INTO Flight2A VALUES
('A123J','Jet2', 'Mumbai', 'Kolkata'),
('B123J','Jet2', 'Mumbai', 'Delhi'),
('A456I','Indigo', 'Delhi', 'Indore'),
('C578J','Jet2', 'Indore', 'Pune'),
('C789I','Indigo', 'Pune', 'Chennai'),
('B556G','GoAir', 'Chennai', 'Bangalore'),
('N123J','Jet2', 'Mumbai', 'Jaipur'),
('M123J','Jet2', 'Mumbai', 'Delhi'),
('P456I','Indigo', 'Delhi', 'Indore'),
('D578G','GoAir', 'Indore', 'Pune'),
('K789J','Jet2', 'Pune', 'Chennai'),
('M556G','GoAir', 'Chennai', 'Bangalore'),
('N756J','Jet2', 'Pune', 'Delhi'),
('K756J','Jet2', 'Pune', 'Jaipur');

INSERT INTO Flight2B VALUES
('A146J','Jet2', 'Mumbai', 'Kolkata'),
('B146J','Jet2', 'Mumbai', 'Indore'),
('A257I','Indigo', 'Delhi', 'Mumbai'),
('C709I','Indigo', 'Pune', 'Chennai'),
('A457I','Indigo', 'Chennai', 'Bangalore'),
('B550G','GoAir', 'Indore', 'Pune'),
('D570G','GoAir', 'Chennai', 'Bangalore');

INSERT INTO Booking2A VALUES
('A123J',91, 100, '2022-09-16 10:00:00'),
('B123J',185, 200, '2022-09-10 10:00:00'),
('A457I',160, 200, '2022-09-11 10:00:00'),
('C578J',100, 100, '2022-09-12 10:00:00'),
('C709I',80, 200, '2022-09-15 10:00:00'),
('B550G',189, 200, '2022-10-01 10:00:00'),
('N123J',45, 100, '2022-09-16 10:00:00'),
('M125J',98, 200, '2022-09-10 10:00:00'),
('P456I',140, 200, '2022-09-15 10:00:00'),
('D570G',70, 100, '2022-09-12 10:00:00'),
('K789J',190, 200, '2022-09-18 10:00:00'),
('M556G',200, 200, '2022-10-05 10:00:00'),
('N756J',149, 300, '2022-10-04 10:00:00'),
('Q706I',156, 300, '2022-10-04 10:00:00')
;

1. Using Flight2A and Flight2B, Write Query to return data for all flights

2. Last letter of Flight Number used to identify the airline to which the flight belongs to.Determine the Airline names based on Last letter of flight number from Bookings table. Consider we have data only for three airlines i.e. GoAir, Indigo, Jet2.
Eg. : for flight number A123J, last letter is 'J' and hence flight belongs to Jet2 Ailine, similarly depict the airlines for all flights

3. Flight with less than 49% occupancy are most likely to be cancelled, return 'bad' if occupancy is less than or equal to 49%, if occupancy is greater than 49 return 'Good' as FlightIsGood flag

--4. Write SQL to determine Flights (Flight2A and Flight2B) for which we do not have Bookings data using:
--a. left join

select fa.* from Flight2A fa
left join Booking2A b
on b.FlightNumber = fa.FlightNumber
where b.PassengerCount is Null
Union
select fb.* from Flight2B fb
left join Booking2A b
on b.FlightNumber = fb.FlightNumber
where b.PassengerCount is Null


select * from Flight2A
select * from Flight2B
select * from Booking2A

--4. Write SQL to determine Flights (Flight2A and Flight2B) for which we do not have Bookings data using:
--b. not in

with cte as
(
select fa.* from Flight2A fa
Union
select fb.* from Flight2B fb
)
select * from cte c
where c.FlightNumber not in (select FlightNumber
					from Booking2A b)


--4. Write SQL to determine Flights (Flight2A and Flight2B) for which we do not have Bookings data using:
--c. not exists

with cte as
(
select fa.* from Flight2A fa
Union
select fb.* from Flight2B fb
)
select * from cte c
where  not exists (select FlightNumber
					from Booking2A b
					where c.FlightNumber = b.FlightNumber)


--4. Write SQL to determine Flights (Flight2A and Flight2B) for which we do not have Bookings data using:
--d. except

with cte as
(
select fa.* from Flight2A fa
Union
select fb.* from Flight2B fb
)
select FlightNumber from cte 
except 
select 
FlightNumber from Booking2A 
--4. Write SQL to determine Flights (Flight2A and Flight2B) for which we do not have Bookings data using:
--e. any other method (full outer join?)
with cte as
(
select fa.* from Flight2A fa
Union
select fb.* from Flight2B fb
)
select * from cte c
full outer join Booking2A b
on c.FlightNumber = b.FlightNumber
where b.PassengerCount is null and c.FlightNumber is not null

--5. Write SQL to return
--a. FlightNumber, Airline, Source, Destination, PassengerCount along with max number of passengers that have booked a ticket 
--in a particular flight for the airline. If passenger count details are not available for a flight then return 0 as passenger count.
--Order the results with FlightNumber

with cte as
(
select fa.* from Flight2A fa
Union
select fb.* from Flight2B fb
) 
select c.FlightNumber,c.Airline,c.Source,c.Destination,isNull(b.PassengerCount,0) as passenger_count,
Max(b.PassengerCount) over(partition by Airline) as Max_PS_Cnt
from cte c
left join Booking2A b
on c.FlightNumber = b.FlightNumber

---
select


Sample Output (Actual Output may differ)

FlightNumber	Airline	Source	Destination	passenger_count	Max_PS_Cnt
B556G			GoAir	Chennai	Bangalore	0				200
M556J			GoAir	Chennai	Bangalore	200				200
D578G			GoAir	Indore	Pune		0				200
B550G			GoAir	Indore	Pune		189				200
D570G			GoAir	Chennai	Bangalore	70				200
A257I			Indigo	Delhi	Mumbai		0				160
C709I			Indigo	Pune	Chennai		80				160
A457I			Indigo	Chennai	Bangalore	160				160
C789I			Indigo	Pune	Chennai		0				160
P456I			Indigo	Delhi	Indore		140				160
A456I			Indigo	Delhi	Indore		0				160
C578J			Jet2	Indore	Pune		100				190
A123J			Jet2	Mumbai	Kolkata		91				190
B123J			Jet2	Mumbai	Delhi		185				190
N123J			Jet2	Mumbai	Jaipur		45				190