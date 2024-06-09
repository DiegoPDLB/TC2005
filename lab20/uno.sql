SELECT m.Clave, m.Descripción
FROM Materiales m
JOIN Entregan e ON m.Clave = e.Clave
JOIN Proyectos p ON e.Numero = p.Numero
WHERE p.Denominacion = 'México sin ti no estamos completos';
