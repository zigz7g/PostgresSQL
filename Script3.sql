-- Найти количество городов из разных стран из таблицы Person.StateProvince (из выборки исключить пустые поля)
SELECT COUNT(DISTINCT "Name") AS "CityCount"
FROM "Person"."StateProvince"
WHERE "CountryRegionCode" IS NOT NULL AND "Name" IS NOT NULL;
