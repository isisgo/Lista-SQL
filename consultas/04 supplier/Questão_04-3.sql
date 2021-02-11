/*QUESTÃO 3 - Base 4 SUPPLIER*/
SELECT p.pname
FROM parts p
INNER JOIN sppj s ON s.parts_pno = p.pno
INNER JOIN projects pj ON pj.pjno = s.projects_pjno
INNER JOIN suppliers sup ON sup.sno = s.suppliers_sno
GROUP BY (p.pname)
HAVING group_concat(DISTINCT sup.sno ORDER BY sup.sno) = 
	(SELECT group_concat(DISTINCT sup.sno ORDER BY sup.sno) FROM suppliers sup)