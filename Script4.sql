-- 4. Выведите название первых пяти продуктов и для каждого из них - название следующего продукта (в алфавитном порядке) ("Production"."Product").
WITH OrderedProducts AS (
    SELECT 
        "ProductID", 
        "Name", 
        ROW_NUMBER() OVER (ORDER BY "Name") AS RowNum
    FROM 
        "Production"."Product"
)
SELECT 
    p1."Name" AS CurrentProduct, 
    p2."Name" AS NextProduct
FROM 
    OrderedProducts p1
LEFT JOIN 
    OrderedProducts p2
ON 
    p1.RowNum = p2.RowNum - 1
WHERE 
    p1.RowNum <= 5;