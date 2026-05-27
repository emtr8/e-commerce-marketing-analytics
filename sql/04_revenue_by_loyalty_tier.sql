SELECT
    cust.loyalty_tier,
    COUNT(DISTINCT t.customer_id) AS unique_customers,
    COUNT(*) AS transactions,
    ROUND(SUM(t.gross_revenue), 2) AS total_revenue,
    ROUND(AVG(t.gross_revenue), 2) AS avg_order_value,
    ROUND(SUM(t.gross_revenue) / COUNT(DISTINCT t.customer_id), 2) AS revenue_per_customer
FROM transactions_clean t
JOIN customers cust 
    ON t.customer_id = cust.customer_id
GROUP BY cust.loyalty_tier
ORDER BY revenue_per_customer DESC;