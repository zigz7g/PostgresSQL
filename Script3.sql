-- Показать самую раннюю StartDate для каждого компонента (Таблица Production.BillOfMaterial). Показать поля BillOfMaterialID, ComponentID, StartDate.
SELECT 
    "BillOfMaterialsID", 
    "ComponentID", 
    "StartDate"
FROM (
    SELECT 
        "BillOfMaterialsID", 
        "ComponentID", 
        MIN("StartDate") OVER (PARTITION BY "BillOfMaterialsID", "ComponentID") AS "StartDate",
        ROW_NUMBER() OVER (PARTITION BY "BillOfMaterialsID", "ComponentID" ORDER BY "StartDate") AS "RowNum"
    FROM 
        "Production"."BillOfMaterials"
) AS SubQuery
WHERE 
    "RowNum" = 1;
