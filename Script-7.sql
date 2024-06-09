-- Установка значения по умолчанию для столбца Stock в таблице Products
ALTER TABLE Products ADD COLUMN Stock INT DEFAULT 0;
