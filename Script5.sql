--Создать копию таблицы без данных
CREATE TABLE NewTableName AS
SELECT * FROM ExistingTableName
WHERE 1=0;
