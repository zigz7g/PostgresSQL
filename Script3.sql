--Найти количество провинций (Name) из разных стран (CountryRegionCode) из таблицы Person.StateProvince (из
--выборки исключить пустые поля).
SELECT COUNT(DISTINCT "Name")
FROM "Person"."StateProvince"
WHERE "CountryRegionCode" IS NOT NULL AND "StateProvince" IS NOT NULL;
