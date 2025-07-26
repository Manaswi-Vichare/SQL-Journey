# Write your MySQL query statement below
#sqljourney-MV
SELECT W1.id
FROM Weather as W1, Weather as W2
WHERE datediff(W1.recordDate, W2.recordDate) = 1 and W1.temperature > W2.temperature