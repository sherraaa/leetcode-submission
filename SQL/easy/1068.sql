-- PostgreSQL
SELECT product_name, year, price
FROM sales s
LEFT JOIN product p
ON p.product_id = s.product_id