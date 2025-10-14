SELECT * FROM Customers
WHERE Country = 'Germany' AND City = 'Berlin';
SELECT * FROM Customers
WHERE City = 'Berlin' OR City = 'Stuttgart';
SELECT * FROM Customers
WHERE Country = 'Germany' OR Country = 'Spain';
SELECT * FROM Customers
WHERE NOT Country = 'Germany';
SELECT * FROM Customers
WHERE Country = 'Germany' AND (City = 'Berlin' OR City = 'Stuttgart');
SELECT * FROM Customers
WHERE NOT Country = 'Germany' AND NOT Country = 'USA';