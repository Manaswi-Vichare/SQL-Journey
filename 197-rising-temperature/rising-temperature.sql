# Write your MySQL query statement below
#sqljourney-mv
SELECT e2.id as Id FROM Weather e1, Weather e2
WHERE DATEDIFF(e2.recordDate, e1.recordDate) = 1 AND e2.temperature > e1.temperature 