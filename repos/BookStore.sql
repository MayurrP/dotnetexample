CREATE TABLE users
(
id int primary key Identity(1,1),
full_name varchar(50),
enabled bit,
last_login datetime2
)
Go

insert into users(full_name,enabled,last_login)values
('John Smith',0,'2017-10-25 10:26:10')
insert into users(full_name,enabled,last_login)values
('Alice Walker',1,'2017-10-25 10:26:50')
insert into users(full_name,enabled,last_login)values
('Harry Potter',1,'2017-10-25 10:26:50')
insert into users(full_name,enabled,last_login)values
('Jone Smith',1,'2017-10-25 10:26:43')
go

select* from users
Go

CREATE TABLE books
(
id int primary key Identity(1,1),
title varchar(50),
author varchar(50),
published_date datetime2,
isbn varchar(15)
)
Go

insert into books(title,author,published_date,isbn)values
('My First SQL','Mary Parker','2012-02-22 12:08:17',96969677676),
('My Second SQL','John Mayer','2013-02-22 12:08:17',96969677676),
('My Third SQL','Cary Fint','2015-02-22 12:08:17',96969677676)

select * from books
go


CREATE TABLE reviews
(
id int primary key Identity(1,1),
book_id int foreign key references books(id),
reviewer_name varchar(50),
content varchar(50),
raitng int,
pulish_date datetime2
)
Go

insert into reviews(book_id,reviewer_name,content,raitng,pulish_date)values
(1,'John Smith','My First Review',4,'2017-12-10 05:50:11'),
(2,'John Smith','My Second Review',5,'2017-10-13 05:50:11'),
(2,'John Smith','My Another Review',1,'2017-10-22 05:50:11')

select * from reviews
go

CREATE TABLE checkouts
(
id int primary key Identity(1,1),
user_id int foreign key references users(id),
book_id int foreign key references books(id),
checkout_date datetime2,
return_date datetime2,
)
Go

insert into checkouts(user_id,book_id,checkout_date,return_date)values
(1,1,'2017-12-15 05:50:11',null),
(1,2,'2017-10-13 05:50:11','2017-10-18 05:50:11'),
(2,2,'2017-10-05 05:50:11','2017-10-13 05:50:11'),
(6,3,'2017-10-22 05:50:11',null)

select * from checkouts

CREATE TABLE addresses
(
user_id int primary key Identity(1,1),
street varchar(50),
city varchar(50),
state varchar(50)
)
Go

insert into addresses(street,city,state)values
('Market Street','San Francisco','CA'),
('Elm Street','San Francisco','CA'),
('Main Street','Bostan','MA')

select * from addresses