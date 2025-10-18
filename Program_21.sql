SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
CROSS JOIN Orders;
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
CROSS JOIN Orders
WHERE Customers.CustomerID=Orders.CustomerID;