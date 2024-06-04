-- Написать скрипт для удаления дубликатов
DELETE FROM DuplicateTable
WHERE ctid NOT IN (
    SELECT MIN(ctid)
    FROM DuplicateTable
    GROUP BY column1, column2
);
