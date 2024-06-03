-- 1. Показать товар с наименьшим SafetyStockLevel (Таблица Production.Product). Вывести наименование и SafetyStockLevel товара.
SELECT 
    "Name", 
    "SafetyStockLevel"
FROM 
    "Production"."Product"
ORDER BY 
    "SafetyStockLevel" ASC
LIMIT 1;