SELECT ST.student_id, ST.student_name, S.subject_name, 
COUNT(E.student_id) AS attended_exams
FROM STUDENTS ST 
CROSS JOIN SUBJECTS S 
LEFT JOIN EXAMINATIONS E ON E.subject_name = S.subject_name  AND ST.student_id = E.student_id 
GROUP BY ST.student_id, ST.student_name, S.subject_name
ORDER BY ST.student_id, ST.student_name;
