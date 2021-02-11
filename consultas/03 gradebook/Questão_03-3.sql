/*QUESTÃO 3 - Base 3 GRADEBOOK*/
SELECT e.students_sid
FROM enrolls e
INNER JOIN courses c ON c.term = e.courses_term AND c.secno = e.courses_secno
INNER JOIN catalogue ca ON ca.cno = c.cno
WHERE ca.cno = 'csc226' OR ca.cno = 'csc227'
GROUP BY e.students_sid
