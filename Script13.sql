--Скрипт для демонстрации работы с оператором MERGE
MERGE INTO TargetTable AS Target
USING SourceTable AS Source
ON (Target.ID = Source.ID)
WHEN MATCHED THEN
    UPDATE SET Name = Source.Name, Price = Source.Price
WHEN NOT MATCHED THEN
    INSERT (ID, Name, Price) VALUES (Source.ID, Source.Name, Source.Price);
