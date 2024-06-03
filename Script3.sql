-- Показать список товаров (поле Name), в котором указан, есть ли у товара отслеживаемая цена (поле ListPrice 
-- из Production.ProductListPriceHistory) или нет, из таблицы Production.ProductListPriceHistory, 
-- Production.Product, используя RIGHT OUTER JOIN.
SELECT 
    p."Name", 
    CASE 
        WHEN l."ListPrice" IS NOT NULL THEN 'Yes' 
        ELSE 'No' 
    END AS "HasTrackedPrice"
FROM 
    "Production"."Product" p
RIGHT OUTER JOIN 
    "Production"."ProductListPriceHistory" l
ON 
    p."ProductID" = l."ProductID";
