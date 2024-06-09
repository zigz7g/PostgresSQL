--Добавление нового заказа и обновление склада
CREATE PROCEDURE AddNewOrder(
    IN p_ClientID INT,
    IN p_VegetableID INT,
    IN p_Quantity INT,
    IN p_OrderDate DATE
)
LANGUAGE plpgsql
AS $$
DECLARE
    TotalPrice DECIMAL(10,2);
BEGIN
    -- Вычисление общей стоимости заказа
    SELECT CalculateTotalPriceWithDiscount(p_ClientID, p_VegetableID, p_Quantity) INTO TotalPrice;

    -- Вставка нового заказа
    INSERT INTO Orders (ClientID, VegetableID, Quantity, OrderDate, TotalPrice)
    VALUES (p_ClientID, p_VegetableID, p_Quantity, p_OrderDate, TotalPrice);

    -- Обновление количества товара на складе
    UPDATE Vegetables
    SET Stock = Stock - p_Quantity
    WHERE ID = p_VegetableID;
    
    COMMIT;
END;
$$;
