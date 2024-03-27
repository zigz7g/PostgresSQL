--Показать поля PurchaseOrderID, RevisionNumber, [Status], ShipDate из
--таблицы Purchasing.PurchaseOrderHeader. Если текущее состояние заказа
--([Status]) "Ожидание" (= 1) и ориентировочная дата отгрузки от поставщика
--(ShipDate) неизвестна, то заменить значение поля ShipDate на текущую дату.
--Названия полей оставить без изменений.
SELECT 
    "PurchaseOrderID", 
    "RevisionNumber", 
    "Status", 
    COALESCE("ShipDate", '2022-03-03') as ShipDate
FROM 
    "Purchasing"."PurchaseOrderHeader"
    WHERE 
    ("Status" = 1 AND "ShipDate" IS NULL) OR ("Status" <> 1);


