-- Ограничить результирующий набор, полученный в п.8.
SELECT TOP (100) PERCENT
    p."BusinessEntityID"
FROM 
    "Person"."Person" p
EXCEPT
SELECT 
    e."BusinessEntityID"
FROM 
    "HumanResources"."Employee" e
ORDER BY 
    p."BusinessEntityID";
