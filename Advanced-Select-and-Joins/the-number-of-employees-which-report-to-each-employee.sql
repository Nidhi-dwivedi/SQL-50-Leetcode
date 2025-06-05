# Write your MySQL query statement below
SELECT 
   E1.employee_id, 
   E1.name, 
   COUNT(E2.employee_id) AS reports_count, 
   ROUND(AVG(E2.age)) AS average_age
FROM Employees E1, Employees E2 
WHERE E1.employee_id=E2.reports_to
GROUP BY 1
HAVING reports_count > 0
ORDER BY 1;