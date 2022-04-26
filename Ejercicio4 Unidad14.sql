CREATE DATABASE ej04;

/*Usa la base de datos ej04*/
USE ej04;

/* Crear la tabla Departamentos*/
CREATE TABLE departamentos(
codigo_departamento int AUTO_INCREMENT PRIMARY KEY NOT NULL,
nombre VARCHAR(100),
presupuesto int
);



/*Crear la tabla empleado*/
CREATE TABLE empleados (
dni VARCHAR(8) PRIMARY KEY NOT NULL, 
nombre VARCHAR(100),
apellidos VARCHAR(255),
codigo_departamento int NOT NULL,
FOREIGN KEY (codigo_departamento) REFERENCES departamentos(codigo_departamento)
ON DELETE CASCADE ON UPDATE CASCADE
);

/*Para borrar tabla*/
DROP TABLE departamentos;