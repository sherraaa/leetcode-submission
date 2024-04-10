-- PostgreSQL
SELECT a1.machine_id, ROUND(CAST(AVG(a2.timestamp - a1.timestamp) as NUMERIC), 3) AS processing_time
FROM activity a1, activity a2
WHERE a1.machine_id = a2.machine_id
AND a1.activity_type = 'start'
AND a2.activity_type = 'end'
GROUP BY a1.machine_id