USE Training


-- Creation of a table for Persons. 
CREATE TABLE Persons (
	PersonID int, 
	LastName varchar(255), 
	FirstName varchar(255),
	Address varchar(255),
	City varchar(255)
);

-- Insertion of some make up data.
INSERT INTO Persons (PersonID, LastName, FirstName, Address, City)
VALUES (1, 'Smith', 'John', '123 Main Street', 'New York');

INSERT INTO Persons (PersonID, LastName, FirstName, Address, City)
VALUES (2, 'Johnson', 'Emily', '456 Elm Avenue', 'Los Angeles');

INSERT INTO Persons (PersonID, LastName, FirstName, Address, City)
VALUES (3, 'Williams', 'Michael', '789 Oak Drive', 'Chicago');

INSERT INTO Persons (PersonID, LastName, FirstName, Address, City)
VALUES (4, 'Jones', 'Jessica', '321 Pine Lane', 'Houston');

INSERT INTO Persons (PersonID, LastName, FirstName, Address, City)
VALUES (5, 'Brown', 'David', '654 Cedar Road', 'Phoenix');

INSERT INTO Persons (PersonID, LastName, FirstName, Address, City)
VALUES (16, 'Garcia', 'Sophia', '567 Maple Street', 'San Francisco');

INSERT INTO Persons (PersonID, LastName, FirstName, Address, City)
VALUES (17, 'Davis', 'Daniel', '890 Walnut Avenue', 'Seattle');

INSERT INTO Persons (PersonID, LastName, FirstName, Address, City)
VALUES (18, 'Rodriguez', 'Olivia', '432 Oak Drive', 'Boston');

INSERT INTO Persons (PersonID, LastName, FirstName, Address, City)
VALUES (19, 'Martinez', 'Liam', '765 Elm Avenue', 'Denver');

INSERT INTO Persons (PersonID, LastName, FirstName, Address, City)
VALUES (20, 'Miller', 'Ava', '198 Pine Lane', 'Dallas');

-- Query the table to check that everything is alright
SELECT * FROM Persons;