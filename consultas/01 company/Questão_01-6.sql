/*QUESTÃO 6 - Base 1 COMPANY*/
SELECT DISTINCT e.fname, e.minit, e.lname, e.address
FROM WORKS_ON wo
INNER JOIN PROJECT p ON wo.pno = p.pnumber
INNER JOIN EMPLOYEE e ON wo.essn = e.ssn
INNER JOIN DEPARTMENT d ON e.dno = d.dnumber
INNER JOIN DEPT_LOCATIONS dl ON d.dnumber = dl.dnumber
WHERE 1=1
	AND p.plocation LIKE '%Houston%' 
    AND 'Houston' NOT IN (SELECT dlocation FROM DEPT_LOCATIONS WHERE dnumber = d.dnumber);