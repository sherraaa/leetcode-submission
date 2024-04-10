-- PostgreSQL
SELECT 
    project_id,
    ROUND(AVG(e.experience_years) * 1.0, 2) AS average_years
FROM project p INNER JOIN employee e
    ON p.employee_id = e.employee_id
GROUP BY project_id