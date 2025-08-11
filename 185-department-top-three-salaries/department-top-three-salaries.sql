# Write your MySQL query statement below
#sqljourney-MV
SELECT Department, Employee, Salary
FROM (
    SELECT 
        d.name AS Department,
        e.name AS Employee,
        e.salary AS Salary,
        DENSE_RANK() OVER (PARTITION BY d.name ORDER BY Salary DESC) AS rank_1
    FROM Employee e
    JOIN Department d ON e.departmentId = d.id
) AS rank_table
WHERE rank_1 <= 3