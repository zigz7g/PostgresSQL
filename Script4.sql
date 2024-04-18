--Найти профессии из таблицы HumanResources.Employee, где
--количество работников женского пола больше 1 (из выборки
--исключить пустые поля).
SELECT "JobTitle"
FROM "HumanResources"."Employee"
WHERE "Gender" = 'F'
GROUP BY "JobTitle" having count( * ) > 1;

