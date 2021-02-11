/*QUESTÃO 4 - Base 1 COMPANY*/
SELECT e.fname, e.minit, e.lname
FROM EMPLOYEE e
INNER JOIN WORKS_ON wo ON wo.essn = e.ssn
INNER JOIN PROJECT p ON wo.pno = p.pnumber
GROUP BY e.fname, e.minit, e.lname
HAVING COUNT(DISTINCT p.pnumber) = (SELECT count(*) FROM PROJECT);