-- 5. Показать товары, цена которых меньше средней цены товара той же линейки продуктов (линейка продуктов определена). Показать поля Name, ListPrice и ProductLine.
SELECT 
    "Name", 
    "ListPrice", 
    "ProductLine"
FROM 
    "Production"."Product"
WHERE 
    "ListPrice" < (
        SELECT 
            AVG("ListPrice")
        FROM 
            "Production"."Product" sub
        WHERE 
            sub."ProductLine" = "Production"."Product"."ProductLine"
    );
