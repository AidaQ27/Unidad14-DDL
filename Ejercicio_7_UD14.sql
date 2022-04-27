CREATE DATABASE Directores;
USE Directores;

CREATE TABLE Despachos (NumeroDespacho INT, Capacidad INT,
PRIMARY KEY (NumeroDespacho));

CREATE TABLE Directores (DNI VARCHAR (10), NombreApellido VARCHAR(255), NumeroDespacho INT, DNIJefe VARCHAR (10),
PRIMARY KEY (DNI),
FOREIGN KEY (NumeroDespacho) REFERENCES Despachos (NumeroDespacho),
FOREIGN KEY (DNIJefe) REFERENCES Directores (DNI)
ON DELETE CASCADE ON UPDATE CASCADE);
