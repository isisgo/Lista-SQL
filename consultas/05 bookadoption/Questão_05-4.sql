SELECT c.dept
FROM courses c
INNER JOIN bookuses bu ON bu.courses_cnum = c.cnum 
INNER JOIN books b ON b.isbn = bu.books_isbn
WHERE b.publisher = 'Addison Wesley' AND b.author = 'Navathe'
GROUP BY (c.dept)
HAVING count(DISTINCT(b.isbn)) = (
	SELECT count(isbn) FROM books WHERE author = 'Navathe' AND publisher ='Addison Wesley'
)