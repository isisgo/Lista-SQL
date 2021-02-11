/*QUESTÃO 2 - Base 1 COMPANY*/
SELECT e.fname, e.minit, e.lname 
FROM company.EMPLOYEE e
INNER JOIN DEPENDENT d ON e.fname = d.dependent_name AND e.ssn = d.essn