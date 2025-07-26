# Write your MySQL query statement below
#sqljourney-MV
SELECT 
    machine_id, 
    ROUND(SUM(if(
    activity_type = 'start', -1, 1) * `timestamp`)/COUNT(DISTINCT process_id),3) 
    as processing_time 
FROM Activity
GROUP BY machine_id