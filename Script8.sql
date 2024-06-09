-- Показать список BusinessEntityID, которые содержатся в таблице Person.Person, но не содержатся в таблице 
-- HumanResources.Employee.
SELECT 
    p."BusinessEntityID"
FROM 
    "Person"."Person" p
EXCEPT
SELECT 
    e."BusinessEntityID"
FROM 
    "HumanResources"."Employee" e;

