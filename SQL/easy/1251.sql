SELECT 
    p.product_id, 
    COALESCE(ROUND(SUM(price * units * 1.0)/SUM(u.units) * 1.0, 2), 0) AS average_price
FROM prices p LEFT JOIN unitssold u 
    ON p.product_id = u.product_id
    AND u.purchase_date BETWEEN p.start_date AND p.end_date -- purchase_date should follow price changes date
GROUP BY p.product_id