/*QUESTÃO 3 - Base 1 COMPANY*/
SELECT e.fname, e.minit, e.lname 
FROM EMPLOYEE e
INNER JOIN EMPLOYEE se ON se.ssn = e.super_ssn
WHERE se.fname = 'Franklin' AND se.lname = 'Wong' 