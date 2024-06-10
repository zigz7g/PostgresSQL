-- 1. Показать товар с наименьшим SafetyStockLevel (Таблица Production.Product). Вывести наименование и SafetyStockLevel товара.
SELECT 
    "Name", 
    "SafetyStockLevel"
FROM 
    "Production"."Product"
WHERE 
    "SafetyStockLevel" = (
        SELECT MIN("SafetyStockLevel")
        FROM "Production"."Product"
    );
