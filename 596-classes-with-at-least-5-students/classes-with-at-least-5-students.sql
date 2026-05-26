# Write your MySQL query statement below
#sqljourney-mv
SELECT class FROM Courses
GROUP BY class
HAVING COUNT(class) >= 5







