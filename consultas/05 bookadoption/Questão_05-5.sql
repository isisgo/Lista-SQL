/*QUESTÃO 5 - Base 5 BOOK ADOPTION*/
SELECT s.name
FROM students s
INNER JOIN enrolls e ON s.ssn = e.students_ssn
INNER JOIN courses c ON e.courses_cnum = c.cnum
INNER JOIN bookuses bu ON bu.courses_cnum = c.cnum 
INNER JOIN books b ON b.isbn = bu.books_isbn
WHERE b.author <> 'Navathe'
GROUP BY (s.name)