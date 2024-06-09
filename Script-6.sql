-- Добавление ограничения уникальности для столбца Name в таблице Products
ALTER TABLE Products ADD CONSTRAINT unique_product_name UNIQUE (Name);
