# Write your MySQL query statement below
SELECT X, Y, Z,
CASE 
  WHEN X+Y>Z AND 
       Y+Z>X AND 
       Z+X>Y 
        THEN 'Yes' 
  ELSE 'No' 
  END AS triangle 
FROM triangle;