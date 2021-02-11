/*QUESTÃO 5 - Base 2 MAILORDER*/
SELECT DISTINCT c.cname
FROM  employees e
INNER JOIN orders o ON e.eno = o.eno
INNER JOIN zipcodes z ON e.zip = z.zip
INNER JOIN customers c ON o.cno = c.cno
INNER JOIN odetails od ON o.ono = od.ono
WHERE o.ono NOT IN 
	(SELECT ono FROM (SELECT orders.ono, count(parts.price) AS valor FROM orders
	INNER JOIN odetails ON orders.ono = odetails.ono
	INNER JOIN parts ON odetails.pno = parts.pno
	WHERE parts.price >= 20.0
	GROUP BY orders.ono) as sub);