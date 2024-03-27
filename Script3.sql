--Показать поля TransactionID, ProductID, 
--ReferenceOrderID, TransactionType, Quantity, ActualCost 
--из таблицы Production.TransactionHistory, где значения поля Quantity больше 4, 
--а значения поля ActualCost находятся в диапазоне от 100 до 150
SELECT "TransactionID", "ProductID", "ReferenceOrderID", "TransactionType", "Quantity", "ActualCost"
FROM "Production"."TransactionHistory"
WHERE "Quantity" > 4 AND "ActualCost" BETWEEN 100 AND 150;