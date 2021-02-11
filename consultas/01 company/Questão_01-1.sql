/*QUESTÃO 1 - Base 1 COMPANY*/
SELECT e.fname, e.minit, e.lname 
FROM company.EMPLOYEE e
INNER JOIN WORKS_ON wo ON e.ssn = wo.essn
INNER JOIN PROJECT p ON wo.pno = p.pnumber
WHERE e.dno = 5 AND wo.hours > 10 AND p.pname='ProductX'