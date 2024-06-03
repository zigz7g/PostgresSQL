-- Показать список BusinessEntityID, которые содержатся в таблице Person.Person, но не содержатся в таблице 
-- HumanResources.Employee.
SELECT 
    p."BusinessEntityID"
FROM 
    "Person"."Person" p
LEFT JOIN 
    "HumanResources"."Employee" e
ON 
    p."BusinessEntityID" = e."BusinessEntityID"
WHERE 
    e."BusinessEntityID" IS NULL;
