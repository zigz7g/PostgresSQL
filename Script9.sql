-- Ограничить результирующий набор, полученный в п.8.
SELECT 
    p."BusinessEntityID"
FROM 
    "Person"."Person" p
EXCEPT
SELECT 
    be."BusinessEntityID"
FROM 
    "Person"."BusinessEntity" be;
