-- Показать список ID работников (BusinessEntityID), в котором указано, имеет работник резюме или нет, 
-- из таблиц HumanResources.Employee, HumanResources.JobCandidate, используя LEFT OUTER JOIN.
SELECT 
    e."BusinessEntityID", 
    CASE 
        WHEN j."JobCandidateID" IS NOT NULL THEN 'Yes' 
        ELSE 'No' 
    END AS "HasResume"
FROM 
    "HumanResources"."Employee" e
LEFT OUTER JOIN 
    "HumanResources"."JobCandidate" j
ON 
    e."BusinessEntityID" = j."BusinessEntityID";
