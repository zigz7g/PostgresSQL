--Просмотр доступных овощей с их состоянием и сроком годности
CREATE VIEW AvailableVegetables AS
SELECT
    v.ID,
    v.Name,
    s.Name AS SupplierName,
    v.ExpiryDate,
    v.Price,
    v.Status,
    v.Stock
FROM
    Vegetables v
JOIN
    Suppliers s ON v.SupplierID = s.ID
WHERE
    v.Stock > 0 AND v.ExpiryDate > CURRENT_DATE;
