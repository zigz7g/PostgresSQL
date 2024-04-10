--Найти минимальную стоимость (StandardCost) из таблицы Production.ProductCostHistory.
--Не учитывать нулевую стоимость.
SELECT MIN("StandardCost") AS MinCost
FROM "Production"."ProductCostHistory"
WHERE "StandardCost" > 0;
