SELECT m.Clave, m.Descripción
FROM Materiales m
JOIN Entregan e ON m.Clave = e.Clave
JOIN Proveedores p ON e.RFC = p.RFC
WHERE p.RazonSocial = 'Acme tools';
