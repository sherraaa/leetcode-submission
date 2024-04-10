-- PostgreSQL
SELECT
    DISTINCT query_name,
    ROUND(AVG(rating * 1.0/position * 1.0), 2) AS quality, -- avg rating / position
    ROUND(SUM(CASE WHEN (rating < 3) THEN 1.0 ELSE 0 END) / COUNT(rating) * 100.0, 2) AS poor_query_percentage -- SUM(rating < 3) / COUNT(all)
FROM queries
WHERE query_name IS NOT NULL
GROUP BY query_name