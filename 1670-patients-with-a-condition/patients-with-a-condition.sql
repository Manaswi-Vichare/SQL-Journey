# Write your MySQL query statement below
#sqljourney-MV
SELECT patient_id, patient_name, conditions FROM Patients
WHERE conditions LIKE 'DIAB1%' OR conditions LIKE '% DIAB1%'