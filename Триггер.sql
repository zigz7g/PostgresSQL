CREATE OR REPLACE FUNCTION UpdateVegetableStatus()
RETURNS TRIGGER AS $$
BEGIN
    -- Обновление состояния овоща в зависимости от количества на складе
    IF NEW.Quantity <= 0 THEN
        UPDATE Vegetables
        SET Status = 'испорченный'
        WHERE ID = NEW.VegetableID;
    ELSE
        UPDATE Vegetables
        SET Status = 'хороший'
        WHERE ID = NEW.VegetableID;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER UpdateVegetableStatusTrigger
AFTER INSERT ON Orders
FOR EACH ROW
EXECUTE FUNCTION UpdateVegetableStatus();
