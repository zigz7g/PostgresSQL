-- Пропустить 15 строк из результирующего набора, полученного в п.9.
WITH "ExcludedIDs" AS (
    SELECT 
        p."BusinessEntityID"
    FROM 
        "Person"."Person" p
    EXCEPT
    SELECT 
        e."BusinessEntityID"
    FROM 
        "HumanResources"."Employee" e
),
"NumberedRows" AS (
    SELECT 
        "BusinessEntityID", 
        ROW_NUMBER() OVER (ORDER BY "BusinessEntityID") AS "RowNum"
    FROM 
        "ExcludedIDs"
)
SELECT 
    "BusinessEntityID"
FROM 
    "NumberedRows"
WHERE 
    "RowNum" > 15;
