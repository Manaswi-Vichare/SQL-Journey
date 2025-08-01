# Write your MySQL query statement below
#sqljourney-MV
SELECT customer_id FROM Customer
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key) = 
    (SELECT COUNT(distinct product_key) 
    FROM product)
