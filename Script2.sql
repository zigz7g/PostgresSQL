--Найти среднее время отдыха работников женского пола 
--(Gender), которым 50 лет из таблицы HumanResources.Employee.
SELECT AVG("VacationHours") AS AverageVacationHours
FROM "HumanResources"."Employee"
WHERE "Gender" = 'F' AND date_part('year', age(current_date, "BirthDate")) = '50';
