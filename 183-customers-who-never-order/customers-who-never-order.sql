# Write your MySQL query statement below
#sqljourney-MV
SELECT name as Customers From Customers C
LEFT JOIN Orders O
ON C.id = O.customerId
WHERE O.customerId IS NULL