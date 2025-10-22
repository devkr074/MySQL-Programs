ALTER TABLE Customers
ADD Email varchar(255);
ALTER TABLE Customers
DROP COLUMN Email;
ALTER TABLE Persons
ADD DateOfBirth date;
ALTER TABLE Persons
MODIFY COLUMN DateOfBirth year;
ALTER TABLE Persons
DROP COLUMN DateOfBirth;