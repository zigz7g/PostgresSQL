-- Удаление дубликатов
DELETE FROM DuplicateTable
WHERE ctid NOT IN (SELECT min(ctid) FROM DuplicateTable GROUP BY ID);