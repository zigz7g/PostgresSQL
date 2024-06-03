-- 5. Показать товары, цена которых меньше средней цены товара той же линейки продуктов (линейка продуктов определена). Показать поля Name, ListPrice и ProductLine.
WITH AveragePrices AS (
    SELECT 
        "ProductLine", 
        AVG("ListPrice") AS AvgPrice
    FROM 
        "Production"."Product"
    GROUP BY 
        "ProductLine"
)
SELECT 
    p."Name", 
    p."ListPrice", 
    p."ProductLine"
FROM 
    "Production"."Product" p
JOIN 
    AveragePrices ap
ON 
    p."ProductLine" = ap."ProductLine"
WHERE 
    p."ListPrice" < ap.AvgPrice;