-- Таблица "Suppliers"
ALTER TABLE Suppliers
ADD CONSTRAINT uq_name UNIQUE (Name)
ALTER COLUMN Name SET NOT NULL;