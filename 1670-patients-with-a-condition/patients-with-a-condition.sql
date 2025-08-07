# Write your MySQL query statement below
#sqljourney-MV
SELECT * FROM Patients
HAVING conditions LIKE 'DIAB1%' or conditions LIKE '% DIAB1%'