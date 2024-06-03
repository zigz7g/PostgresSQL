-- Показать список фамилий (LastName), которые имеют несколько имен (FirstName) из таблицы Person.Person, 
-- используя SELF JOIN.
SELECT 
    p1."LastName"
FROM 
    "Person"."Person" p1
JOIN 
    "Person"."Person" p2
ON 
    p1."LastName" = p2."LastName"
    AND p1."FirstName" != p2."FirstName";
