SELECT 
    ROUND(SUM(CASE WHEN DATEDIFF(T2.event_date, T1.day1) = 1 THEN 1 ELSE 0 END) / COUNT(DISTINCT T2.player_id), 2) AS fraction 
FROM 
    (SELECT player_id, MIN(event_date) AS day1 FROM Activity GROUP BY player_id) AS T1 
JOIN 
    Activity T2 
ON 
    T1.player_id = T2.player_id;
