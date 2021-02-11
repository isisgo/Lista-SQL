/*QUESTÃO 2 - Base 2 MAILORDER*/
SELECT e.ename, z.city
FROM employees e
INNER JOIN zipcodes z ON e.zip = z.zip
INNER JOIN orders o ON o.eno = e.eno
WHERE o.ono IN (
	SELECT der.ono FROM 
	(	SELECT o.ono, (od.qty*p.price) AS order_item_price FROM orders o
		INNER JOIN odetails od ON od.ono = o.ono
		INNER JOIN parts p ON p.pno = od.pno
		GROUP BY o.ono, order_item_price
    ) AS der
	GROUP BY der.ono
	HAVING sum(der.order_item_price) > 50
)