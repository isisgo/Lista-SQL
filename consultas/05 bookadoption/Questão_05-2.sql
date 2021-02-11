/*QUESTÃO 2 - Base 5 BOOK ADOPTION*/
SELECT c.cname
FROM courses c
INNER JOIN bookuses bu ON bu.courses_cnum = c.cnum
GROUP BY c.cname
HAVING COUNT(DISTINCT bu.books_isbn) >= 2