-- Расход
SELECT Name, SUM(Quantity) AS TotalSold
FROM Orders
JOIN Vegetables ON Orders.VegetableID = Vegetables.ID
WHERE Vegetables.ID = 2
GROUP BY Name;
