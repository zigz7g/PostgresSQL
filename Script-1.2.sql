-- Создание таблицы Products
CREATE TABLE Products (
    ID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL
);