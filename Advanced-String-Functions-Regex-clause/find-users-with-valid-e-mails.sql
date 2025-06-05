SELECT * 
FROM Users 
WHERE RIGHT(mail, 13) LIKE '@leetcode.com' 
AND LEFT(mail, LENGTH(mail) - 13) RLIKE '^[A-Za-z][A-Za-z0-9._-]*$'
