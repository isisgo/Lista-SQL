/*QUESTÃO 6 - Base 2 MAILORDER*/
SELECT c.cname
FROM customers c
WHERE c.cno NOT IN (SELECT cno FROM orders)