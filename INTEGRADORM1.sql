DROP DATABASE laboratorio;
CREATE DATABASE LABORATORIO;
USE LABORATORIO;

#CREACION DE TABLAS


CREATE TABLE FACTURAS (
LETRA CHAR, 
NUMERO INT, 
 CLIENTEID INT, 
 ARTICULOID INT, 
 FECHA DATE,
 MONTO DOUBLE,
 PRIMARY KEY(LETRA, NUMERO)
);

    
CREATE TABLE ARTICULOS (
ARTICULOID INT PRIMARY KEY,
 NOMBRE VARCHAR(50),
 PRECIO DOUBLE,
 STOCK INT);
 
 CREATE TABLE CLIENTES  (
CLIENTEID INT PRIMARY KEY,
 NOMBRE VARCHAR(25),
 APELLIDO VARCHAR(25),
 CUIT CHAR(16),
 DIRECCION VARCHAR(50),
 COMENTARIOS VARCHAR(50)
);

SHOW databases;
#SHOW tables;
DESC CLIENTES;

#ETAPA 1.2
ALTER TABLE FACTURAS
CHANGE CLIENTEID IDCLIENTE INT;

ALTER TABLE FACTURAS
CHANGE ARTICULOID IDARTCULO INT;

ALTER TABLE FACTURAS
MODIFY MONTO DOUBLE UNSIGNED;

ALTER TABLE ARTICULOS
CHANGE ARTICULOID IDARTICULO INT PRIMARY KEY;

ALTER TABLE ARTICULOS
MODIFY NOMBRE VARCHAR(75);

ALTER TABLE ARTICULOS
MODIFY PRECIO DOUBLE UNSIGNED NOT NULL;

ALTER TABLE ARTICULOS
MODIFY STOCK INT UNSIGNED NOT NULL;

ALTER TABLE CLIENTES
CHANGE CLIENTEID IDCLIENTE INT PRIMARY KEY;

ALTER TABLE CLIENTES
MODIFY NOMBRE VARCHAR(30) NOT NULL;

ALTER TABLE CLIENTES
MODIFY APELLIDO VARCHAR(35) NOT NULL;

ALTER TABLE CLIENTES
CHANGE COMENTARIOS OBSERVACIONES VARCHAR(50);

ALTER TABLE CLIENTES
MODIFY OBSERVACIONES VARCHAR(255);

#ETAPA 1.3

INSERT INTO FACTURAS
VALUES('A', 28, 14, 335,'2021-03-18', 1589.50),
('A', 39, 26, 157, '2021-04-12', 979.75),
('B', 8, 17, 95, '2021-04-25', 513.35),
('B', 12, 5, 411, '2021-05-03', 2385.70),
('B', 19, 50, 157, '2021-05-26', 979.75);

INSERT INTO ARTICULOS
VALUES(95, 'Webcam con Micrófono Plug & Play', 513.35, 39),
(157, 'Apple AirPods Pro', 979.75, 152),
(335, 'Lavasecarropas Automático Samsung', 1589.50, 12),
(411,'Gloria Trevi / Gloria / CD+DVD', 2385.70 ,2);

INSERT INTO CLIENTES
VALUES(5, 'SANTIAGO', 'GONZALEZ','23-24582359-9' , 'Uriburu 558 - 7A', 'VIP'),
(14,'GLORIA', 'FERNANDEZ' , '23-35965852-5','Constitución 323','GBA'),
(17, 'GONZALO', 'LOPEZ', '23-33587416-0', 'ARIAS 2624', 'GBA' ),
(26, 'CARLOS', 'GARCIA', '23-42321230-9', 'Pasteur 322 - 2C', 'VIP'),
(50, 'MICAELA', 'ALTIERI', '23-22885566-5', 'SANTAMARINA 1255', 'GBA');



