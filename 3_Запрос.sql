--Показывать прибыль магазина по указанному товару за отчетный период времени
SELECT Name, SUM(TotalPrice) AS TotalProfit
FROM Orders
JOIN Vegetables ON Orders.VegetableID = Vegetables.ID
WHERE Vegetables.ID = 2
AND OrderDate BETWEEN "2024-05-01" AND "2024-05-02"
GROUP BY Name;
