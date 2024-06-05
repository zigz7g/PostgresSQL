

-- Создание таблицы "Orders"
CREATE TABLE Orders (
    ID SERIAL PRIMARY KEY,
    ClientID INT NOT NULL,
    VegetableID INT NOT NULL,
    Quantity INT NOT NULL,
    OrderDate DATE NOT NULL,
    TotalPrice DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (ClientID) REFERENCES Clients(ID),
    FOREIGN KEY (VegetableID) REFERENCES Vegetables(ID)
);
