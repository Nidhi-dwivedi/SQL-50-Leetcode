# Write your MySQL query statement below
SELECT m.name 
FROM Employee e JOIN Employee m
WHERE m.id=e.managerId
GROUP BY e.managerId HAVING count(*)>=5;