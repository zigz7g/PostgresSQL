- 3. Показать самую раннюю StartDate для каждого компонента (Таблица Production.BillOfMaterial). Показать поля BillOfMaterialID, ComponentID, StartDate.
SELECT 
    "BillOfMaterialID", 
    "ComponentID", 
    MIN("StartDate") AS "StartDate"
FROM 
    "Production"."BillOfMaterial"
GROUP BY 
    "BillOfMaterialID", "ComponentID";