--Скрипт для создания копии таблицы с выбранными полями
CREATE TABLE PartialCopyTable AS
SELECT ID, Name FROM SourceTable;
