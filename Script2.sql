-- Найти среднее время отдыха работников женского пола которым 50 лет из таблицы HumanResources.Employee
SELECT AVG("VacationHours") AS "AvgVacationHours"
FROM "HumanResources"."Employee"
WHERE "Gender" = 'F' AND DATE_PART('year', AGE("BirthDate")) = 50;
