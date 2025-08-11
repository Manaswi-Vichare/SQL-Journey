# Write your MySQL query statement below
#sqljourney-MV
SELECT DISTINCT visited_on,
        SUM(amount) OVER w AS amount,
        ROUND((SUM(amount) OVER w)/7, 2) AS average_amount
    FROM customer
    WINDOW w AS ( 
            ORDER BY visited_on
            RANGE BETWEEN INTERVAL 6 DAY PRECEDING AND current ROW
    )
    LIMIT 6, 999