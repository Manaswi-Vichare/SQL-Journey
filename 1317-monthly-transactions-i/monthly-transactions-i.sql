# Write your MySQL query statement below
#sqljourney-MV
SELECT
    DATE_FORMAT(trans_date, '%Y-%m') as month,
    country,
    COUNT(*) as trans_count,
    COUNT(IF(state = 'approved', 1, Null)) as approved_count,
    SUM(amount) as trans_total_amount,
    SUM(IF(state = 'approved', amount, 0))  as approved_total_amount
FROM transactions
GROUP BY month, country
ORDER BY month, country;