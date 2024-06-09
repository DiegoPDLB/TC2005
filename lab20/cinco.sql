CREATE VIEW MaterialesVendidos2001 AS
SELECT e.Clave, SUM(e.Cantidad) AS TotalVendido
FROM Entregan e
WHERE YEAR(e.Fecha) = 2001
GROUP BY e.Clave;

SELECT TOP 1 Clave
FROM MaterialesVendidos2001
ORDER BY TotalVendido DESC;
