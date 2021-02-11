/*QUESTÃO 4 - Base 3 GRADEBOOK*/
SELECT s.fname, s.minit, s.lname
FROM students s
WHERE s.sid NOT IN (SELECT students_sid FROM enrolls)