SELECT
    month_str,
    COUNT(*) AS transactions,
    ROUND(SUM(gross_revenue), 2) AS monthly_revenue,
    ROUND(AVG(gross_revenue), 2) AS avg_order_value
FROM transactions_clean
GROUP BY month_str
ORDER BY month_str;