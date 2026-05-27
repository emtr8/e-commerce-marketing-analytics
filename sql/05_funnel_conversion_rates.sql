SELECT
    event_type,
    COUNT(*) AS event_count,
    ROUND(
        100.0 * COUNT(*) / (
            SELECT COUNT(*) 
            FROM events 
            WHERE event_type = 'view'
        ),
        2
    ) AS pct_of_views
FROM events
GROUP BY event_type
ORDER BY event_count DESC;