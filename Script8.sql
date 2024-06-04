--Создать таблицу, имеющую дубликаты строк
CREATE TABLE DuplicateTable AS
SELECT column1, column2 FROM SourceTable
UNION ALL
SELECT column1, column2 FROM SourceTable;
