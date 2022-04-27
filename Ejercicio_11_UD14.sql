CREATE DATABASE Investigadores;
USE Investigadores;

CREATE TABLE Facultad (CodigoFacultad INT, Nombre VARCHAR (255),
PRIMARY KEY (CodigoFacultad));

CREATE TABLE Investigadores (DNI VARCHAR (10), Nombre VARCHAR(20), CodigoFacultad INT,
PRIMARY KEY (DNI),
FOREIGN KEY (CodigoFacultad) REFERENCES Facultad (CodigoFacultad)
ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE Equipos (NumSerie CHAR(4), Nombre VARCHAR(20), CodigoFacultad INT,
PRIMARY KEY (NumSerie),
FOREIGN KEY (CodigoFacultad) REFERENCES Facultad (CodigoFacultad)
ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE Reserva (IdReserva INT,DNI VARCHAR (10),NumSerie CHAR(4), Comienzo DATETIME, Fin DATETIME,
PRIMARY KEY (IdReserva),
FOREIGN KEY (DNI) REFERENCES Investigadores (DNI),
FOREIGN KEY (NumSerie) REFERENCES Equipos (NumSerie)
ON DELETE CASCADE ON UPDATE CASCADE); 


