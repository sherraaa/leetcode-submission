-- PostgreSQL
SELECT eu.unique_id AS unique_id, e.name AS name
FROM employees AS e LEFT JOIN employeeUNI AS eu ON e.id = eu.id