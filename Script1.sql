-- Показать количество товаров в корзине покупателя (Quantity) и поля Name, ProductNumber,
-- ShoppingCartID из таблиц Production.Product, Sales.ShoppingCartItem.
SELECT 
    s."Quantity", 
    p."Name", 
    p."ProductNumber", 
    s."ShoppingCartID"
FROM 
    "Production"."Product" p
JOIN 
    "Sales"."ShoppingCartItem" s
ON 
    p."ProductID" = s."ProductID";
