-- Найти минимальную стоимость (StandardCost) из таблицы ProductCostHistory
SELECT MIN("StandardCost") AS MinStandardCost
FROM "Production"."ProductCostHistory";
