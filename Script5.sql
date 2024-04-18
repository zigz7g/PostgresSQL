--Вывести BusinessEntityID, ContactTypeID и количество ContactTypeIDидляиBusinessEntityID с разными
--ContactTypeID, предусмотреть вывод количества ContactTypeID для всех ContactTypeID у различных
--BusinessEntityID из таблицы Person.BusinessEntityContact (Использовать ROOLUP).
SELECT 
    "BusinessEntityID",
    "ContactTypeID",
    COUNT( * ) AS ContactTypeCount
FROM 
    "Person"."BusinessEntityContact"
GROUP BY ROLLUP
    ("BusinessEntityID",
    "ContactTypeID");

