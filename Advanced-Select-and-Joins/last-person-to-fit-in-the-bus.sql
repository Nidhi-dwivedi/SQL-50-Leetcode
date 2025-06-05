# Write your MySQL query statement below
SELECT person_name
FROM(
    SELECT person_id, person_name, weight, sum(weight) OVER(order by turn ASC ROWS BETWEEN UNBOUNDED PRECEDING and CURRENT ROW) AS C_SUM
    FROM Queue
)X WHERE C_SUM<=1000
ORDER BY C_SUM DESC LIMIT 1;