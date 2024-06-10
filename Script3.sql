-- Показать самую раннюю StartDate для каждого компонента (Таблица Production.BillOfMaterial). Показать поля BillOfMaterialID, ComponentID, StartDate.
SELECT "BillOfMaterialID", "ComponentID", "StartDate"
FROM "Production"."BillOfMaterial" bom1
WHERE "StartDate" = (
    SELECT MIN(StartDate)
    FROM "Production"."BillOfMateria"l bom2
    WHERE bom2."ComponentID" = bom1."ComponentID"
    ):
