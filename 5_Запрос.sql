--Показывать количество проданного данного товара за отчетный период
SELECT Name, SUM(Quantity) AS TotalSold
FROM Orders
JOIN Vegetables ON Orders.VegetableID = Vegetables.ID
WHERE Vegetables.ID = 1	
AND OrderDate BETWEEN 2024-06-05 AND 2024-06-05
GROUP BY Name;
