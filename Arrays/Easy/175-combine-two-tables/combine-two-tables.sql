# Write your MySQL query statement below
#sqljourney-MV
SELECT p.firstName, p.lastName, A.city, A.state FROM Person p
LEFT JOIN Address as A
ON p.personID = A.personId
