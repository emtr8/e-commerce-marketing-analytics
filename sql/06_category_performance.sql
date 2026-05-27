SELECT
    p.category,
    COUNT(*) AS transactions,
    ROUND(SUM(t.gross_revenue), 2) AS total_revenue,
    ROUND(AVG(t.gross_revenue), 2) AS avg_order_value,
    ROUND(AVG(t.discount_applied) * 100, 2) AS avg_discount_pct,
    ROUND(100.0 * SUM(t.refund_flag) / COUNT(*), 2) AS refund_rate_pct
FROM transactions_clean t
JOIN products p 
    ON t.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;