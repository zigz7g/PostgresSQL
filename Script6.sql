--Изменить запрос п.5 использовать CUBE. Отделить строки, созданные с
--помощью агрегатных функций от строк из фактической таблицы.
SELECT 
    "BusinessEntityID", 
    "ContactTypeID", 
    COUNT( * ) AS ContactTypeCount
FROM 
    "Person"."BusinessEntityContact"
GROUP BY CUBE("BusinessEntityID", "ContactTypeID");
