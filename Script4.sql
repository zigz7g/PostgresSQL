-- Найти профессии из таблицы HumanResources.Employee где количество работников женского пола больше 1 (из выборки исключить пустые поля)
SELECT "JobTitle"
FROM "HumanResources"."Employee"
WHERE "Gender" = 'F' AND "JobTitle" IS NOT NULL
GROUP BY "JobTitle"
HAVING COUNT(*) > 1;
