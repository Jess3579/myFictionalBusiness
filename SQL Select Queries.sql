USE myFictionalBusiness;
GO
SELECT *
FROM Customers
ORDER BY Name;
GO
SELECT *
FROM Inventory
ORDER BY Description;
GO
SELECT *
FROM Orders
ORDER BY OrderDate;
GO
SELECT Orders.ID,
       Orders.OrderDate,
       Locations.Name,
       Customers.Name
FROM Orders
JOIN Locations ON Orders.LocationID = Locations.ID
JOIN Customers ON Orders.CustomerID = Customers.ID
ORDER BY Orders.OrderDate;
GO
SELECT Inventory.ArtworkID,
       Inventory.Description,
       Inventory.Price,
       Orders.ID AS OrderID,
       Orders.OrderDate
FROM Inventory
JOIN OrderDetails ON Inventory.ArtworkID = OrderDetails.InventoryNumber
JOIN Orders ON OrderDetails.OrderID = Orders.ID
JOIN Locations ON Orders.LocationID = Locations.ID
WHERE Locations.Name = 'Website';
GO
SELECT COUNT(Orders.ID) AS [Total Orders],
       Locations.ID,
       Locations.Name
FROM Locations
JOIN Orders ON Locations.ID = Orders.LocationID
GROUP BY Locations.ID, Locations.Name;
GO
SELECT Inventory.ArtworkID,
       Inventory.Description,
       Inventory.Price,
       OrderDetails.InventoryNumber,
       COUNT(OrderDetails.InventoryNumber) AS [Times Ordered],
       SUM(OrderDetails.Quantity) AS [Total Quantity Ordered]
FROM Inventory
JOIN OrderDetails ON Inventory.ArtworkID = OrderDetails.InventoryNumber
GROUP BY Inventory.ArtworkID,
         Inventory.Description,
         Inventory.Price,
         OrderDetails.InventoryNumber
ORDER BY [Total Quantity Ordered] DESC;