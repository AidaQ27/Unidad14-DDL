CREATE DATABASE biblioteca;

/*Usa la base de datos Biblioteca*/
USE biblioteca;

/*Crear la tabla socio*/
CREATE TABLE socio (
codigo_socio int AUTO_INCREMENT PRIMARY KEY NOT NULL, 
dni VARCHAR(10) NOT NULL,
nombre CHAR(30) NOT NULL,
apellido CHAR(30) NOT NULL,
direccion CHAR(50), 
telefono VARCHAR(10) 
);

/* Crear la tabla Prestamo*/
CREATE TABLE prestamo (
id_prestamo int AUTO_INCREMENT PRIMARY KEY NOT NULL, 
fecha_inicial DATE NOT NULL,
fecha_devolucion DATE NOT NULL,
fecha_maxima DATE NOT NULL, 
codigo_socio int NOT NULL,
FOREIGN KEY (codigo_socio) REFERENCES socio(codigo_socio)
ON DELETE CASCADE ON UPDATE CASCADE
);


/*Crear tabla Obra*/
CREATE TABLE obra (
id_obra int AUTO_INCREMENT PRIMARY KEY NOT NULL,
deteriorado TEXT(100),
comentario TEXT(100),
nombre TEXT(50) NOT NULL,
año int(4),
resumen TEXT(100) 
);

/*Crear tabla Incluye*/
CREATE TABLE incluye (
id_incluye int AUTO_INCREMENT PRIMARY KEY NOT NULL,
id_prestamo int NOT NULL, 
FOREIGN KEY (id_prestamo) REFERENCES prestamo(id_prestamo)
ON DELETE CASCADE ON UPDATE CASCADE,
id_obra int NOT NULL,
FOREIGN KEY (id_obra) REFERENCES obra(id_obra)
ON DELETE CASCADE ON UPDATE CASCADE
);

/*Crear la tabla Autor*/
CREATE TABLE autor (
id_autor int AUTO_INCREMENT PRIMARY KEY NOT NULL,
nombre TEXT(20),
pais TEXT(20)
);

/* Crear la tabla crea*/
CREATE TABLE crea (
id_crea int AUTO_INCREMENT PRIMARY KEY NOT NULL,
id_autor int NOT NULL,
FOREIGN KEY (id_autor) REFERENCES autor(id_autor)
ON DELETE CASCADE ON UPDATE CASCADE,
id_obra int NOT NULL,
FOREIGN KEY (id_obra) REFERENCES obra(id_obra)
ON DELETE CASCADE ON UPDATE CASCADE
);

/*Crear la tabla libro*/
CREATE TABLE libros (
id_libro int AUTO_INCREMENT PRIMARY KEY NOT NULL, 
id_obra int NOT NULL,
FOREIGN KEY (id_obra) REFERENCES obra(id_obra)
ON DELETE CASCADE ON UPDATE CASCADE,
autor CHAR(30),
numero_paginas int
);

/*Crear la tabla pelicula*/
CREATE TABLE pelicula (
id_pelicula int AUTO_INCREMENT PRIMARY KEY NOT NULL, 
id_obra int NOT NULL,
FOREIGN KEY (id_obra) REFERENCES obra(id_obra)
ON DELETE CASCADE ON UPDATE CASCADE,
director CHAR(30),
duracion int
);

/*Crear la tabla cd*/
CREATE TABLE cd (
id_cd int AUTO_INCREMENT PRIMARY KEY NOT NULL, 
id_obra int NOT NULL,
FOREIGN KEY (id_obra) REFERENCES obra(id_obra)
ON DELETE CASCADE ON UPDATE CASCADE,
autor CHAR(30),
n_canciones int
);







