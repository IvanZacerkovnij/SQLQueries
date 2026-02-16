
SELECT * FROM Orders AS o
LEFT JOIN Products AS p ON p.id = o.ProductId
WHERE p.Manufacturer = 'Google';

SELECT * FROM Customers AS c
LEFT JOIN Orders AS o ON o.CustomerId = c.id
WHERE o.id IS NULL

SELECT c.FirstName , COUNT(o.id) AS order_count FROM Customers AS c
LEFT JOIN Orders AS o ON o.CustomerId = c.Id
GROUP BY c.id , c.FirstName
