SELECT p.Denominacion, SUM(e.Cantidad * m.Costo) AS TotalPagar
FROM Proyectos p
JOIN Entregan e ON p.Numero = e.Numero
JOIN Materiales m ON e.Clave = m.Clave
GROUP BY p.Denominacion;
