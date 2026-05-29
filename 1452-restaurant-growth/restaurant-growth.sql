# Write your MySQL query statement below
#sqljourney-mv
SELECT v1.visited_on AS visited_on,
       SUM(v2.day_sum) AS amount,
       ROUND(AVG(v2.day_sum), 2) AS average_amount
FROM (
        SELECT visited_on, SUM(amount) AS day_sum 
        FROM Customer 
        GROUP BY visited_on
    ) v1,
    (
        SELECT visited_on, SUM(amount) AS day_sum
        FROM Customer
        GROUP BY visited_on
    ) v2
WHERE DATEDIFF(v1.visited_on, v2.visited_on) BETWEEN 0 AND 6
GROUP BY v1.visited_on
HAVING COUNT(v2.visited_on) = 7