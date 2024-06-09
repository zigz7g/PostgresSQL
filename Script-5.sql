-- Создание таблицы Purchases и добавление внешних ключей
CREATE TABLE Purchases (
    ID SERIAL PRIMARY KEY,
    ID_Product INT NOT NULL,
    ID_Vendor INT NOT NULL,
    PurchaseDate DATE NOT NULL,
    FOREIGN KEY (ID_Product) REFERENCES Products(ID),
    FOREIGN KEY (ID_Vendor) REFERENCES Vendors(ID)
);
