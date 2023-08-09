-- Create the Product table
CREATE TABLE Products (
Id INT IDENTITY(1,1) PRIMARY KEY,
Name NVARCHAR(100) NOT NULL,
Price DECIMAL(18, 2) NOT NULL
);

-- Insert sample data into the Product table
INSERT INTO Products (Name, Price) VALUES ('Product 1', 10.99);
INSERT INTO Products (Name, Price) VALUES ('Product 2', 15.99);
INSERT INTO Products (Name, Price) VALUES ('Product 3', 24.99);

select * from Products

CREATE PROCEDURE ProductsSP
AS
BEGIN
SELECT Id, Name, Price FROM Products
END

