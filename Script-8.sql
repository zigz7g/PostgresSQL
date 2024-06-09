-- Добавление ограничения CHECK для столбца Price в таблице Products
ALTER TABLE Products ADD CONSTRAINT check_price CHECK (Price > 0);
