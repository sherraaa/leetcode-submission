-- PostgreSQL
SELECT 
    ROUND(SUM(CASE WHEN (a.event_date - b.min_date = 1) THEN 1 ELSE 0 END) * 1.0 / COUNT(DISTINCT a.player_id) * 1.0, 2) AS fraction
FROM (
    -- first login date
    SELECT player_id, MIN(event_date) AS min_date
    FROM activity
    GROUP BY player_id
) AS b JOIN activity a ON b.player_id = a.player_id