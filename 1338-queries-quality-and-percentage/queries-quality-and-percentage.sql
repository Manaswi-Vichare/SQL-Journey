# Write your MySQL query statement below
#sqljourney-MV
SELECT
    DISTINCT query_name,
    ROUND(
        SUM(rating / `position`) / COUNT(query_name) 
    , 2)
    as quality,
    ROUND(
        SUM(IF(rating < 3, 1, 0)) / COUNT(query_name) * 100
    , 2)
    as poor_query_percentage
FROM Queries
GROUP BY query_name