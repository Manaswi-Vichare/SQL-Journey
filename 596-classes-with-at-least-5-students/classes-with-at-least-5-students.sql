# Write your MySQL query statement below
#sqljourney-MV
SELECT class FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5