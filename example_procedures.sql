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