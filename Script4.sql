-- 4. Выведите название первых пяти продуктов и для каждого из них - название следующего продукта (в алфавитном порядке) ("Production"."Product").
SELECT p1."Name", p2."Name" AS NextProduct
FROM "Production"."Product" p1
LEFT JOIN "Production"."Product" p2 
ON p2."Name" = (
    SELECT MIN(p3."Name")
    FROM "Production"."Product" p3
    WHERE p3."Name" < p1."Name"
)
ORDER BY p1."Name" DESC;
