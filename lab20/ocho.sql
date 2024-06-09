CREATE VIEW ProveedoresTelevisa AS
SELECT p.Denominacion, pr.RFC, pr.RazonSocial
FROM Proyectos p
JOIN Entregan e ON p.Numero = e.Numero
JOIN Proveedores pr ON e.RFC = pr.RFC
WHERE p.Denominacion = 'Televisa en acción';

CREATE VIEW ProveedoresEducando AS
SELECT pr.RFC
FROM Proyectos p
JOIN Entregan e ON p.Numero = e.Numero
JOIN Proveedores pr ON e.RFC = pr.RFC
WHERE p.Denominacion = 'Educando en Coahuila';

SELECT *
FROM ProveedoresTelevisa
WHERE RFC NOT IN (SELECT RFC FROM ProveedoresEducando);
