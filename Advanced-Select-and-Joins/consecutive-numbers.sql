SELECT DISTINCT(num) AS ConsecutiveNums 
FROM (
    SELECT id, num, 
           lag(num) OVER (ORDER BY id) AS prev_num,
           lead(num) OVER (ORDER BY id) AS next_num
    FROM Logs
) sq
WHERE sq.num = sq.prev_num AND sq.num = sq.next_num;
