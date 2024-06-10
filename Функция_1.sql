--Вычисление общей стоимости заказа с учетом скидки клиента
CREATE FUNCTION CalculateTotalPriceWithDiscount(ClientID INT, VegetableID INT, Quantity INT)
RETURNS DECIMAL(10,2) AS $$
DECLARE
    Price DECIMAL(10,2);
    Discount DECIMAL(4,2);
    TotalPrice DECIMAL(10,2);
BEGIN
    SELECT Price INTO Price FROM Vegetables WHERE ID = VegetableID;
    SELECT Discount INTO Discount FROM Clients WHERE ID = ClientID;
    
    TotalPrice := Quantity * Price * (1 - Discount / 100);
    
    RETURN TotalPrice;
END;
$$ LANGUAGE plpgsql;
