-- Таблица "Clients"
ALTER TABLE Clients
ALTER COLUMN Name SET NOT NULL,
ALTER COLUMN Discount SET NOT NULL;
ADD CONSTRAINT chk_discount CHECK (Discount >= 0 AND Discount <= 100);