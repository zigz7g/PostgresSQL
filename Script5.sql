-- Вывести ProductID где минимальная цена (ListPrice) меньше 1 из таблицы Production.ProductCostHistory. 
-- Добавить столбец с номером строки определяя его порядок в зависимости от минимальной цены.
WITH MinPrices AS (
    SELECT 
        "ProductID", 
        MIN("StandardCost") AS "MinListPrice"
    FROM 
        "Production"."ProductCostHistory"
    GROUP BY 
        "ProductID"
    HAVING 
        MIN("StandardCost") < 1
)
SELECT 
    "ProductID", 
    "MinListPrice",
    (SELECT COUNT(*) 
     FROM MinPrices mp2 
     WHERE mp2."MinListPrice" <= mp1."MinListPrice") AS "RowNumber"
FROM 
    MinPrices mp1
ORDER BY 
    "RowNumber";

