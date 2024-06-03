-- Пропустить 15 строк из результирующего набора, полученного в п.9.
SELECT 
    p."BusinessEntityID"
FROM 
    (SELECT 
        p."BusinessEntityID", 
        ROW_NUMBER() OVER (ORDER BY p."BusinessEntityID") AS "RowNum"
     FROM 
        "Person"."Person" p
     LEFT JOIN 
        "HumanResources"."Employee" e
     ON 
        p."BusinessEntityID" = e."BusinessEntityID"
     WHERE 
        e."BusinessEntityID" IS NULL) AS "Sub"
WHERE 
    "Sub"."RowNum" > 15;
