-- PostgreSQL
SELECT 
    product_id,
    year AS first_year,
    quantity,
    price
FROM sales
WHERE (product_id, year) IN (
    SELECT 
        p.product_id, 
        MIN(year)
    FROM product p
    JOIN sales s ON p.product_id = s.product_id
    GROUP BY p.product_id
)