--Показывать ассортимент товара на выбранный день
SELECT Name, Stock, Price, Status
FROM Vegetables
WHERE CURRENT_DATE <= ExpiryDate;
