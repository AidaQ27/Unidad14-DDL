CREATE DATABASE UD14_EJERCICIO_5;
USE UD14_EJERCICIO_5;

CREATE TABLE almacenes (

	codigo INT PRIMARY KEY,
    lugar VARCHAR(100),
    capacidad INT
);

CREATE TABLE Cajas (

	numreferencia CHAR(5) PRIMARY KEY,
    contenido VARCHAR(100),
    valor INT,
    fk_almacen INT,
	FOREIGN KEY (fk_almacen) REFERENCES almacenes(codigo)
    ON DELETE CASCADE ON UPDATE CASCADE
);



