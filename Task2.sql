CREATE DATABASE Test

CREATE TABLE Customers(
	ID INT PRIMARY KEY,
	Name nvarchar(50) NOT NULL
);

INSERT INTO Customers
VALUES
	(1,'Max'),
	(2,'Pavel'),
	(3,'Ivan'),
	(4,'Leonid');


CREATE TABLE Orders(
	ID INT PRIMARY KEY,
	CustomerId int NOT NULL
);

INSERT INTO Orders
VALUES
	(1,2),
	(2,4);

SELECT Name
FROM Customers LEFT JOIN Orders 
ON Orders.CustomerId = Customers.Id
WHERE CustomerId IS NULL