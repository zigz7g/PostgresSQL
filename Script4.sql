-- 4. Выведите название первых пяти продуктов и для каждого из них - название следующего продукта (в алфавитном порядке) ("Production"."Product").
SELECT 
    CurrentProducts."Name" AS CurrentProduct, 
    NextProducts."Name" AS NextProduct
FROM (
    SELECT 
        "ProductID", 
        "Name", 
        ROW_NUMBER() OVER (ORDER BY "Name") AS RowNum
    FROM 
        "Production"."Product"
) AS CurrentProducts
LEFT JOIN (
    SELECT 
        "ProductID", 
        "Name", 
        ROW_NUMBER() OVER (ORDER BY "Name") AS RowNum
    FROM 
        "Production"."Product"
) AS NextProducts
ON 
    CurrentProducts.RowNum = NextProducts.RowNum - 1
WHERE 
    CurrentProducts.RowNum <= 5;
