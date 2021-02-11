/*QUESTÃO 7 - Base 2 MAILORDER*/
SELECT c.cname
FROM customers c
INNER JOIN orders o ON o.cno = c.cno
GROUP BY c.cname
HAVING count(o.ono) = 2