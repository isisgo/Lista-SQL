/*QUESTÃO 2 - Base 4 SUPPLIER*/
SELECT sup.sname
FROM suppliers sup
INNER JOIN sppj s ON s.suppliers_sno = sup.sno
INNER JOIN parts p ON p.pno = s.parts_pno
INNER JOIN projects pj ON pj.pjno = s.projects_pjno
WHERE pj.pjno = 'J1'
GROUP BY (sup.sname)
HAVING COUNT(DISTINCT p.pno) > 2