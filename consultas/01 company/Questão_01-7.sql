/*QUESTÃO 7 - Base COMPANY*/
SELECT e.fname, e.minit, e.lname
FROM EMPLOYEE e
INNER JOIN DEPARTMENT d ON d.mgr_ssn = e.ssn
WHERE e.ssn NOT IN (SELECT essn FROM DEPENDENT) 