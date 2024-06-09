SELECT e.Clave, SUM(e.Cantidad) AS TotalEntregado
FROM Entregan e
WHERE YEAR(e.Fecha) = 2000
GROUP BY e.Clave;
