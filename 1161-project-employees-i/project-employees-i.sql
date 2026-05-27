# Write your MySQL query statement below
#sqljourney-mv
SELECT P.project_id, 
       ROUND((SUM(E.experience_years) / COUNT(P.project_id)), 2) AS average_years 
FROM Project P
LEFT JOIN Employee E
ON E.employee_id = P.Employee_id
GROUP BY P.project_id
