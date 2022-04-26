CREATE DATABASE ej12;

USE ej12;

/*Crear la tabla profesor*/
CREATE TABLE profesor(
dni_profesor VARCHAR(10) PRIMARY KEY ,
nombre VARCHAR(50) UNIQUE NOT NULL, 
primer_apellido VARCHAR(30) NOT NULL,
segundo_apellido VARCHAR(30),
direccion VARCHAR(30),
titulo VARCHAR(30),
gana VARCHAR(30) NOT NULL,
cuota_hora int
);


/*Crear la tabla curso*/
CREATE TABLE curso(
codigo_unico VARCHAR(10) PRIMARY KEY ,
nombre VARCHAR(50) UNIQUE NOT NULL, 
numero_maximo_alumnos int NOT NULL,
profesor VARCHAR(30),
fecha_inicio  VARCHAR(30),
fecha_fin VARCHAR(30),
numero_horas VARCHAR(30) NOT NULL,
dni_profesor VARCHAR(10) NOT NULL,
FOREIGN KEY (dni_profesor) REFERENCES profesor(dni_profesor)
);

/*Crear la tabla alumnos*/
CREATE TABLE alumnos(
dni_alumno VARCHAR(10) PRIMARY KEY ,
nombre VARCHAR(50) NOT NULL, 
primer_apellido VARCHAR(30) NOT NULL,
segundo_apellido VARCHAR(30),
direccion VARCHAR(30),
fecha_nacimiento VARCHAR(30),
sexo VARCHAR(2),
codigo_unico VARCHAR(10) NOT NULL,
FOREIGN KEY (codigo_unico) REFERENCES curso(codigo_unico)
ON DELETE CASCADE ON UPDATE CASCADE
);

/*Crear tabla intermedia estar*/
CREATE TABLE estar(
id_estar int AUTO_INCREMENT PRIMARY KEY ,
dni_alumno VARCHAR(10) NOT NULL,
FOREIGN KEY (dni_alumno) REFERENCES alumnos(dni_alumno)
ON DELETE CASCADE ON UPDATE CASCADE,
dni_profesor VARCHAR(10) NOT NULL,
FOREIGN KEY (dni_profesor) REFERENCES profesor(dni_profesor)
ON DELETE CASCADE ON UPDATE CASCADE,
codigo_unico VARCHAR(10) NOT NULL,
FOREIGN KEY (codigo_unico) REFERENCES curso(codigo_unico)
ON DELETE CASCADE ON UPDATE CASCADE
);

/*Para borrar tabla*/
DROP TABLE alumnos;