-- Пропустить 15 строк из результирующего набора, полученного в п.9.
SELECT 
    p."BusinessEntityID"
FROM 
    "Person"."Person" p
EXCEPT
SELECT 
    be."BusinessEntityID"
FROM 
    "Person"."BusinessEntity" be
LIMIT 1000
OFFSET 15;
