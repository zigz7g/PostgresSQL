--Скрипт для создания таблицы с дубликатами 
CREATE TABLE DuplicateTable AS
SELECT * FROM SourceTable UNION ALL SELECT * FROM SourceTable;
