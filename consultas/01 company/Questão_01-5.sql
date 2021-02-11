/*QUESTÃO 5 - Base 1 COMPANY*/
SELECT e.fname, e.minit, e.lname
FROM EMPLOYEE e
WHERE e.ssn NOT IN (SELECT essn FROM WORKS_ON)