# Write your MySQL query statement below
SELECT S.user_id, ROUND(ifnull(avg(action='confirmed'),0),2) AS confirmation_rate
FROM Signups S LEFT JOIN Confirmations C
ON S.user_id=C.user_id
GROUP BY user_id;