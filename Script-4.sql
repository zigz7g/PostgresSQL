-- Добавление первичного ключа для таблицы Products (если не было задано при создании)
ALTER TABLE Products ADD CONSTRAINT pk_products PRIMARY KEY (ID);
