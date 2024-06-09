SELECT e.RFC
FROM Entregan e
WHERE YEAR(e.Fecha) = 2000
GROUP BY e.RFC
HAVING AVG(e.Cantidad) >= 300;
