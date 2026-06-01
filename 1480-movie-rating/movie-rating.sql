# Write your MySQL query statement below
(
    SELECT u.name as results FROM Users u
    JOIN MovieRating m ON u.user_id = m.user_id
    GROUP BY u.name
    ORDER BY COUNT(m.rating) DESC,
             u.name ASC
    LIMIT 1
)
UNION ALL
(
    SELECT mo.title AS results FROM Movies mo
    JOIN MovieRating m ON m.movie_id = mo.movie_id
    WHERE m.created_at BETWEEN '2020-02-01' AND '2020-02-29'
    GROUP BY mo.title
    ORDER BY AVG(m.rating) DESC,
             mo.title ASC
    LIMIT 1
)