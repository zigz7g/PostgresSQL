

-- Создание таблицы "Vegetables"
CREATE TABLE Vegetables (
    ID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    SupplierID INT NOT NULL,
    ExpiryDate DATE NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Status VARCHAR(50) NOT NULL,
    Stock INT NOT NULL DEFAULT 0, -- Количество товара на складе
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(ID)
);


