# Write your MySQL query statement below
SELECT R.contest_id, 
ROUND(COUNT(R.contest_id)/(SELECT COUNT(user_id) FROM Users)*100, 2) 
AS Percentage 
FROM Register R JOIN Users U 
ON R.user_id = U.user_id
GROUP BY contest_id 
ORDER BY Percentage DESC, Contest_id ASC;