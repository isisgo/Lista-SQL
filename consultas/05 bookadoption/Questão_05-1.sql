/*QUESTÃO 1 - Base 5 BOOK ADOPTION*/
SELECT s.name
FROM students s
INNER JOIN enrolls e ON s.ssn = e.students_ssn
INNER JOIN courses c ON e.courses_cnum = c.cnum
INNER JOIN bookuses bu ON c.cnum = bu.courses_cnum
INNER JOIN books b ON bu.books_isbn = b.isbn
WHERE b.publisher = 'Addison Wesley'
GROUP BY (s.name)
