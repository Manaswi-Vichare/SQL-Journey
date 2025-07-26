# Write your MySQL query statement below
#sqljourney-MV
SELECT customer_id, Count(*) as count_no_trans FROM Visits
WHERE visit_id NOT IN (SELECT visit_id FROM Transactions)
GROUP BY customer_id;