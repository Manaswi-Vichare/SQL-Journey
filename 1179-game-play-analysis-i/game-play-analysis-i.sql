# Write your MySQL query statement below
#sqljourney-mv
SELECT player_id, MIN(event_date) as first_login FROM Activity
GROUP BY player_id