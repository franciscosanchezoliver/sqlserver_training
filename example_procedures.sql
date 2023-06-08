USE Training

GO 

-- Procedure to insert new data into the table Persons
CREATE PROCEDURE pr_insertPerson(@personId int, 
								 @lastName VARCHAR(255), 
								 @firstName VARCHAR(255), 
								 @address VARCHAR(255), 
								 @city VARCHAR(255))
AS
BEGIN

	INSERT INTO Persons(PersonID, LastName, FirstName, Address, City)
		VALUES(@personId, @lastName, @firstName, @address, @city)

END
GO
										
-- Call the procedure to insert new data into Persons
EXEC pr_insertPerson 21, 'Sanchez Oliver', 'Francisco', 'Madrid', 'El Molar';

-- Check that the new row has been inserted
SELECT * FROM Persons where PersonID = 21;

-- Let's create a procedure to search a person by its name
CREATE PROCEDURE pr_searchPersonByName (@firstName VARCHAR(255))
AS
BEGIN

	SELECT * 
	FROM Persons
	WHERE FirstName LIKE '%' + @firstName + '%'

END
GO

-- Test the procedure by passing a name that we know that exists in the table
EXEC pr_searchPersonByName 'Fran';

-- Let's create a procedure that returns a value
CREATE PROCEDURE pr_calculateAverage(@n1 DECIMAL(4,2), @n2 DECIMAL(4,2), @resu DECIMAL(4,2) OUTPUT)
AS 
BEGIN
	SELECT @resu = (@n1 + @n2) / 2

END
GO

-- Create a variable to store the result of the procedure that calculates the average
DECLARE @resultVariable DECIMAL(4,2)

-- Call the procedure that calculates the average and store the value in a variable
EXECUTE pr_calculateAverage 5 , 6, @resultVariable OUTPUT

-- Query the value of the variable
SELECT @resultVariable as Average

