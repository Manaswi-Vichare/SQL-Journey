# Write your MySQL query statement below
#sqljourney-mv
SELECT P.product_id, 
       IFNULL(
       ROUND
       (SUM(IF(purchase_date BETWEEN start_date AND end_date, P.price * U.units, 0))
       / SUM(IF(purchase_date BETWEEN start_date AND end_date, U.units, 0))
       , 2), 0) AS average_price
FROM Prices P
LEFT JOIN UnitsSold U
ON P.product_id = U.product_id
GROUP BY P.product_id