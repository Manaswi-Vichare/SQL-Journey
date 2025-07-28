# Write your MySQL query statement below
#sqljourney-MV
SELECT 
    s.user_id,
    ROUND(
        COALESCE(
        SUM(IF(
        (c.action = 'confirmed'), 1, 0))
        / 
        COUNT(c.action)
        , 0)
    , 2)
    as confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c ON s.user_id = c.user_id
GROUP BY s.user_id
