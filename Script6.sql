--Скрипт для создания копии таблицы без данных
CREATE TABLE EmptyCopyTable AS
SELECT * FROM SourceTable WHERE 1=0;
