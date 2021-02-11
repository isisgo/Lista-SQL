/*QUESTÃO 3 - Base 5 BOOK ADOPTION*/
SELECT c.dept
FROM courses c
INNER JOIN bookuses bu ON bu.courses_cnum = c.cnum 
INNER JOIN books b ON b.isbn = bu.books_isbn
GROUP BY c.dept
HAVING COUNT(DISTINCT(b.publisher)) = 1