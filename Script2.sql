--Найти среднее время отдыха работников женского пола 
--(Gender), которым 50 лет из таблицы HumanResources.Employee.
SELECT AVG("VacationHours") AS AverageVacationHours
FROM "HumanResources"."Employee"
WHERE "Gender" = 'F' AND "BirthDate" >= '1972-01-01' AND "BirthDate" <= '1972-12-31';
