-- Показать список имен (FirstName), которые имеют несколько фамилий (LastName) из таблицы Person.Person, 
-- используя SELF JOIN.
SELECT DISTINCT
    p1."FirstName"
FROM 
    "Person"."Person" p1
JOIN 
    "Person"."Person" p2
ON 
    p1."FirstName" = p2."FirstName"
    AND p1."LastName" != p2."LastName";

