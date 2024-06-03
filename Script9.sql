-- Ограничить результирующий набор, полученный в п.8.
SELECT TOP (100) PERCENT
    p."BusinessEntityID"
FROM 
    "Person"."Person" p
LEFT JOIN 
    "HumanResources"."Employee" e
ON 
    p."BusinessEntityID" = e."BusinessEntityID"
WHERE 
    e."BusinessEntityID" IS NULL
ORDER BY 
    p."BusinessEntityID";
