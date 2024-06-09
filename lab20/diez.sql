SELECT m.Costo, m.Descripción
FROM Materiales m
JOIN Entregan e ON m.Clave = e.Clave
JOIN Proyectos p ON e.Numero = p.Numero
JOIN Proveedores pr ON e.RFC = pr.RFC
WHERE p.Denominacion = 'Televisa en acción'
AND pr.RFC IN (
    SELECT pr2.RFC
    FROM Proyectos p2
    JOIN Entregan e2 ON p2.Numero = e2.Numero
    JOIN Proveedores pr2 ON e2.RFC = pr2.RFC
    WHERE p2.Denominacion = 'Educando en Coahuila'
);
