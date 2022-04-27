CREATE DATABASE TiendaInformatica;
USE TiendaInformatica;

CREATE TABLE Fabricantes (CodigoFabricante VARCHAR(30), Nombre VARCHAR (20) NOT NULL,
PRIMARY KEY (CodigoFabricante));

CREATE TABLE Articulos (CodigoArticulo VARCHAR(30), Nombre VARCHAR (20) NOT NULL, Precio INT, CodigoFabricante VARCHAR (30),
PRIMARY KEY (CodigoArticulo),
FOREIGN KEY (CodigoFabricante) REFERENCES Fabricantes (CodigoFabricante)
ON DELETE CASCADE ON UPDATE CASCADE);