# Write your MySQL query statement below
#sqljourney-MV
SELECT 
    p.product_id,
    IFNULL(
    ROUND(
    SUM(IF(u.purchase_date BETWEEN p.start_date AND p.end_date, u.units * p.price, 0)) 
    / 
    SUM(IF(u.purchase_date BETWEEN p.start_date AND p.end_date, u.units, 0))
    , 2), 0)
    as average_price 
FROM Prices p
LEFT JOIN UnitsSold u ON p.product_id = u.product_id
GROUP BY p.product_id
