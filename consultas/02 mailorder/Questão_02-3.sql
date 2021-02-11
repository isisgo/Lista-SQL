/*QUESTÃO 3 - Base 2 MAILORDER*/
SELECT c1.cno, c2.cno 
FROM customers c1 
INNER JOIN customers c2 ON c1.zip = c2.zip
WHERE c1.cno <> c2.cno
ORDER BY c1.cno
