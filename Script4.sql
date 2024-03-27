--Показать поля ProductID, BusinessEntityID, AverageLeadTime, StandardPrice, LastReceiptDate
-- из таблицы Purchasing.ProductVendor, для товаров, 
--имеющих дату последнего получения продукта продавцом (LastReceiptDate).
SELECT "ProductID", "BusinessEntityID", "AverageLeadTime", "StandardPrice", "LastReceiptDate"
FROM "Purchasing"."ProductVendor"
WHERE "LastReceiptDate" IS NOT NULL;