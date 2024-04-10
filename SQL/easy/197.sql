-- PostgreSQL
SELECT w1.id
FROM weather w1, weather w2
WHERE w1.recordDate::DATE - w2.recordDate::DATE = 1
AND w1.temperature > w2.temperature