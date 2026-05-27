SELECT
    t.campaign_id,
    c.channel,
    c.objective,
    c.target_segment,
    COUNT(*) AS transactions,
    ROUND(SUM(t.gross_revenue), 2) AS total_revenue,
    ROUND(AVG(t.gross_revenue), 2) AS avg_order_value,
    ROUND(c.expected_uplift * 100, 1) AS expected_uplift_pct
FROM transactions_clean t
JOIN campaigns c 
    ON t.campaign_id = c.campaign_id
WHERE t.campaign_id != 0
GROUP BY 
    t.campaign_id,
    c.channel,
    c.objective,
    c.target_segment,
    c.expected_uplift
ORDER BY total_revenue DESC
LIMIT 10;