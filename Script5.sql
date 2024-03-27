--Показать идентификационный номер и причину производственного отказа (ScrapReasonID и [Name]) 
--из таблицы Production.ScrapReason, где причина производственного отказа связана со сверлением ('drill').
SELECT "ScrapReasonID", "Name"
FROM "Production"."ScrapReason"
WHERE "Name" LIKE '%Drill%';