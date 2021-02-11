/*QUESTÃO 1 - Base 4 SUPPLIER*/
SELECT p.pname
FROM parts p
INNER JOIN sppj s ON s.parts_pno = p.pno
GROUP BY (p.pname)
HAVING COUNT(DISTINCT s.projects_pjno) = 2