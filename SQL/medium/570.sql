SELECT name
FROM employee
JOIN (
    SELECT managerId manager, COUNT(id)
    FROM employee
    GROUP BY managerId
    HAVING COUNT(id) >= 5)
    ON id = manager
