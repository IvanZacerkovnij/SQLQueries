CREATE VIEW info_books_genre AS
SELECT b.title , g.title AS genre , b.price FROM books AS b
INNER JOIN booktToGenres AS bg ON bg.id_book = b.id
INNER JOIN genres as g ON g.id = bg.id_genre
WHERE b.price > 12 AND g.title <> 'Fantasy';
