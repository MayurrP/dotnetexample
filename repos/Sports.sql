create table SportsList
(
id int primary key identity(1,1),
sports_name varchar(60)
)

create table InstructorList
(
id int primary key identity(1,1),
instructor_name varchar(60),
experience int,
age int,
sports_id int foreign key references SportsList(id)
)

create table Players
(
id int primary key identity(1,1),
name varchar(60),
age int,
sports_id int foreign key references SportsList(id),
instructor_id int foreign key references InstructorList(id)
)