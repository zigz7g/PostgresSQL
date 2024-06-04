--Показать работу с оператором MERGE
MERGE INTO TargetTable AS Target
USING SourceTable AS Source
ON Target.ID = Source.ID
WHEN MATCHED THEN
    UPDATE SET Target.column1 = Source.column1
WHEN NOT MATCHED THEN
    INSERT (ID, column1) VALUES (Source.ID, Source.column1);
