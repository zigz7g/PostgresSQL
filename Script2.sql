-- 2. Ранжирование товаров по точке повторного заказа в порядке убывания ("Production"."Product"). Примечание к ранжированию – ранг может начинаться с произвольного числа (например 2 или 5) главное – ранг не должен уменьшаться.
SELECT "Name", "ReorderPoint"
FROM "Production"."Product" p1
WHERE (SELECT COUNT(*) 
       FROM "Production"."Product" p2 
       WHERE p2."ReorderPoint" < p1."ReorderPoint") + 2 AS Rank
ORDER BY ReorderPoint ASC;
