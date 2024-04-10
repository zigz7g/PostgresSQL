--Найти профессии из таблицы HumanResources.Employee, где
--количество работников женского пола больше 1 (из выборки
--исключить пустые поля).
SELECT "JobTitle", COUNT( * ) AS GenderCount
FROM "HumanResources"."Employee"
GROUP BY "JobTitle";
