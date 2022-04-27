CREATE DATABASE ej08;

USE ej08;

/* Crear la tabla Piezas*/
CREATE TABLE piezas(
codigo_pieza int AUTO_INCREMENT PRIMARY KEY NOT NULL,
nombre VARCHAR(100)
);


/* Crear la tabla Proveedores*/
CREATE TABLE proveedores(
id_proveedor CHAR(4) PRIMARY KEY NOT NULL,
nombre VARCHAR(100)
);


/*Crear la tabla suministra*/
CREATE TABLE suministra (
codigo_pieza int NOT NULL,
id_proveedor CHAR(4) NOT NULL, 
PRIMARY KEY (codigo_pieza, id_proveedor),
FOREIGN KEY (codigo_pieza) REFERENCES piezas(codigo_pieza)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
ON DELETE CASCADE ON UPDATE CASCADE,
precio int
);

/*Para borrar tabla*/
DROP TABLE suministra;