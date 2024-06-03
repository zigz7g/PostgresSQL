-- Показать список продуктов из таблицы Production.ProductInventory, содержащихся на нескольких складах (LocationID), 
-- ProductID которых начинается с 3, используя SELF JOIN.
SELECT DISTINCT 
    p1."ProductID"
FROM 
    "Production"."ProductInventory" p1
JOIN 
    "Production"."ProductInventory" p2
ON 
    p1."ProductID" = p2."ProductID"
WHERE 
    p1."LocationID" != p2."LocationID"
    AND p1."ProductID" LIKE '3%';
