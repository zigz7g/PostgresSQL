--Показать поля ProductID, [Name], ProductSubcategoryID из таблицы Production.Product, 
--где идентификационный номер подкатегории (ProductSubcategoryID) 
--равен или 1, или 2, или 3, или 4, или 5 Использовать оператор IN.
SELECT "ProductID", "Name", "ProductSubcategoryID"
FROM "Production"."Product"
WHERE "ProductSubcategoryID" IN (1, 2, 3, 4, 5);