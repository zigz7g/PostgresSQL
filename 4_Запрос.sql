--Показывать в % отношении количество хорошего и испорченного товара для выбранного товара
SELECT Name,
       (SUM(CASE WHEN Status = 'хороший' THEN Stock ELSE 0 END) * 100 / SUM(Stock)) AS GoodPercentage,
       (SUM(CASE WHEN Status = 'испорченный' THEN Stock ELSE 0 END) * 100 / SUM(Stock)) AS BadPercentage
FROM Vegetables
WHERE ID = 1
GROUP BY Name;
