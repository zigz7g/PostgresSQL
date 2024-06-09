-- 2. Ранжирование товаров по точке повторного заказа в порядке убывания ("Production"."Product"). Примечание к ранжированию – ранг может начинаться с произвольного числа (например 2 или 5) главное – ранг не должен уменьшаться.
SELECT 
    "ProductID", 
    "Name", 
    "ReorderPoint", 
    "Rank"
FROM (
    SELECT 
        "ProductID", 
        "Name", 
        "ReorderPoint", 
        ROW_NUMBER() OVER (ORDER BY "ReorderPoint" DESC) + 4 AS "Rank"
    FROM 
        "Production"."Product"
) AS RankedProducts;
