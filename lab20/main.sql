CREATE TABLE Materiales (
    Clave INT,
    Descripción VARCHAR(255),
    Costo DECIMAL(10, 2)
);

CREATE TABLE Proveedores (
    RFC CHAR(13),
    RazonSocial VARCHAR(255)
);

CREATE TABLE Proyectos (
    Numero INT,
    Denominacion VARCHAR(255)
);

CREATE TABLE Entregan (
    Clave INT,
    RFC CHAR(13),
    Numero INT,
    Fecha DATE,
    Cantidad INT
);
