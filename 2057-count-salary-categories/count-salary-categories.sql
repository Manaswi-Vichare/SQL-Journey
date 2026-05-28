# Write your MySQL query statement below
#sqljourney-mv
SELECT 'Low Salary' AS category,
        COUNT(IF(income < 20000, 1, NULL)) AS accounts_count
FROM Accounts
UNION ALL
SELECT 'Average Salary' AS category,
        COUNT(IF(income >= 20000 AND income <= 50000, 1, NULL))
FROM Accounts
UNION ALL
SELECT 'High Salary' AS category,
        COUNT(IF(income > 50000, 1, NULL))
FROM Accounts
GROUP BY category