-- Вывести ProductID где минимальная цена (ListPrice) меньше 1 из таблицы Production.ProductCostHistory. 
-- Добавить столбец с номером строки определяя его порядок в зависимости от минимальной цены.
SELECT "ProductID", MIN("StandardCost") AS "MinListPrice",
       ROW_NUMBER() OVER (ORDER BY MIN("StandardCost")) AS "RowNumber"
FROM "Production"."ProductCostHistory"
GROUP BY "ProductID"
HAVING MIN("StandardCost") < 1;
