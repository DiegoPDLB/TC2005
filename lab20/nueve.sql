SELECT p.Denominacion, pr.RFC, pr.RazonSocial
FROM Proyectos p
JOIN Entregan e ON p.Numero = e.Numero
JOIN Proveedores pr ON e.RFC = pr.RFC
WHERE p.Denominacion = 'Televisa en acción'
AND pr.RFC NOT IN (
    SELECT pr2.RFC
    FROM Proyectos p2
    JOIN Entregan e2 ON p2.Numero = e2.Numero
    JOIN Proveedores pr2 ON e2.RFC = pr2.RFC
    WHERE p2.Denominacion = 'Educando en Coahuila'
);
