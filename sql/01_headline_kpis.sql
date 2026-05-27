SELECT
    COUNT(*) AS total_transactions,
    ROUND(SUM(gross_revenue), 2) AS total_revenue,
    ROUND(AVG(gross_revenue), 2) AS avg_order_value,
    COUNT(DISTINCT customer_id) AS unique_customers,
    SUM(CASE WHEN refund_flag = 1 THEN 1 ELSE 0 END) AS refund_count,
    ROUND(100.0 * SUM(refund_flag) / COUNT(*), 2) AS refund_rate_pct,
    ROUND(
        100.0 * SUM(CASE WHEN discount_applied > 0 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS discount_rate_pct
FROM transactions_clean;