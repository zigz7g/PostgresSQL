--Скрипт для создания копии таблицы по условию
CREATE TABLE ConditionalCopyTable AS
SELECT * FROM SourceTable WHERE Price > 100.00;
