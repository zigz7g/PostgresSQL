-- Добавление нового столбца Description в таблицу Products
ALTER TABLE Products ADD COLUMN Description TEXT;

-- Изменение типа данных столбца Name в таблице Products
ALTER TABLE Products ALTER COLUMN Name TYPE VARCHAR(200);
