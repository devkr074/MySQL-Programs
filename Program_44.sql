CREATE INDEX idx_lastname
ON Persons (LastName);
CREATE INDEX idx_pname
ON Persons (LastName, FirstName);
ALTER TABLE Persons
DROP INDEX idx_lastname;
ALTER TABLE Persons
DROP INDEX idx_pname;