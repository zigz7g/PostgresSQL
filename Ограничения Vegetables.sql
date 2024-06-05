-- Таблица "Vegetables"
ALTER TABLE Vegetables
ALTER COLUMN Name SET NOT NULL,
ALTER COLUMN SupplierID SET NOT NULL,
ALTER COLUMN ExpiryDate SET NOT NULL,
ALTER COLUMN Price SET NOT NULL,
ALTER COLUMN Status SET NOT NULL,
ALTER COLUMN Stock SET NOT NULL
ADD CONSTRAINT chk_expiry_date CHECK (ExpiryDate > CURRENT_DATE),
ADD CONSTRAINT chk_price CHECK (Price >= 0),
ADD CONSTRAINT chk_status CHECK (Status IN ('хороший', 'испорченный')),
ADD CONSTRAINT chk_stock CHECK (Stock >= 0),
ADD CONSTRAINT fk_supplier FOREIGN KEY (SupplierID) REFERENCES Suppliers(ID) ON DELETE CASCADE;