# Write your MySQL query statement below
#sqljourney-mv
SELECT actor_id, director_id FROM ActorDirector
GROUP BY actor_id, director_id
HAVING Count(*) >= 3