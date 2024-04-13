-- PostgreSQL
-- delivery date = order date -> immediate
SELECT  
    ROUND(100.0 * SUM(CASE WHEN (b.first_cust_pref_delivery_date - b.first_order_date = 0) THEN 1 ELSE 0 END) / COUNT(*) * 1.0, 2) AS immediate_percentage
FROM ( -- find FIRST order
    SELECT MIN(order_date) AS first_order_date, MIN(customer_pref_delivery_date) AS first_cust_pref_delivery_date
    FROM delivery 
    GROUP BY customer_id
) AS b