--Показать ID заказов, находящихся в разработке (WorkOrderID), ID товаров (ProductID), 
--количество заказов (OrderQty), количество имеющихся в наличии товаров (StockedQty) и ID производственного отказа (ScrapReasonID)
-- из таблицы Production.WorkOrder. Показать только существующие ID производственного отказа,
-- а все значения данного поля, равные 1, заменить на NULL. Полученные значения вынести в отельное поле с названием OtherScrapReasonID.
SELECT 
    "WorkOrderID", 
    "ProductID", 
    "OrderQty", 
    "StockedQty", 
    "ScrapReasonID",
    NULLIF("ScrapReasonID", 1) AS OtherScrapReasonID
FROM 
    "Production"."WorkOrder"
WHERE 
    "ScrapReasonID" IS NOT NULL;
