SELECT
    c.channel,
    COUNT(DISTINCT t.transaction_id) AS transactions,
    ROUND(SUM(t.gross_revenue), 2) AS total_revenue,
    ROUND(AVG(t.gross_revenue), 2) AS avg_order_value,
    ROUND(100.0 * SUM(t.refund_flag) / COUNT(*), 2) AS refund_rate_pct
FROM transactions_clean t
JOIN campaigns c 
    ON t.campaign_id = c.campaign_id
GROUP BY c.channel
ORDER BY total_revenue DESC;