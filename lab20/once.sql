SELECT m.Descripción, COUNT(e.Clave) AS VecesEntregado, SUM(e.Cantidad * m.Costo) AS TotalCosto
FROM Materiales m
JOIN Entregan e ON m.Clave = e.Clave
GROUP BY m.Descripción;
