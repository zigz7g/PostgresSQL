--Из таблицы Purchasing.PurchaseOrderDetail показать идентификационный номер товара (ProductID), 
--цену за 1 единицу товара (UnitPrice) и количество заказов данного товара (OrderQty). 
--Отсортировать строки по возрастанию цены в поле UnitPrice.
SELECT "ProductID", "UnitPrice", "OrderQty"
FROM "Purchasing"."PurchaseOrderDetail"
ORDER BY "UnitPrice" ASC;