CREATE DATABASE LIBRERIA;
USE LIBRERIA;
CREATE TABLE AUTORES(
 AUTORID varchar(11),
 APELLIDO varchar(40),
 NOMBRE varchar(20),
 TELEFONO varchar(12),
 DIRECCION varchar(40),
 CIUDAD varchar(20),
 PROVINCIA char(2),
 CODIGOPOSTAL char(5),
 ESTADO tinyint(1)
);

CREATE TABLE VENTAS(
 IDLOCAL char(4),
 FACTURA varchar(20),
 FECHA datetime,
 CANTIDAD smallint,
 FORMAPAGO varchar(12),
IDLIBRO varchar(6)
);

CREATE TABLE LOCALES(
 IDLOCAL char(4),
 NOMBRE varchar(40),
 DIRECCION varchar(40),
 CIUDAD varchar(20),
 PROVINCIA char(2),
 CODIGOPOSTAL char(5)
);

CREATE TABLE EDITORIALES(
 EDITORIALID char(4),
 NOMBRE varchar(40),
 CIUDAD varchar(20),
 PROVINCIA char(2),
 PAIS varchar(30)
);

CREATE TABLE LIBROS(
 LIBROID varchar(6),
 TITULO varchar(80),
 CATEGORIA char(12),
 EDITORIALID char(4),
 PRECIO double,
 COMENTARIOS varchar(200),
 FECHA_PUBLICACION datetime
);

CREATE TABLE EMPLEADOS(
EMPLEADOID char(9),
 NOMBRE varchar(20),
 APELLIDO varchar(30),
 PUESTOID smallint,
 EDITORIAL char(4),
 F_INGRESO datetime
);

CREATE TABLE LIBRO AUTOR(
 AUTORID varchar(11),
 LIBROID varchar(6)
);
CREATE TABLE PUESTOS(
 puesto_id smallint,
 descripcion varchar(50)
);


#ejercicio 3
ALTER TABLE autores
add primary key(autor_id);
ALTER TABLE  puestos 
add primary key(puesto_id);
ALTER TABLE  empleados 
add primary key(empleado_id);
ALTER TABLE  libroautor 
add primary key(autor_id, libro_id);
ALTER TABLE  locales 
add primary key(local_id);
ALTER TABLE  editoriales 
add primary key(editorial_id);
ALTER TABLE  libros 
add primary key(libro_id);
ALTER TABLE  ventas 
add primary key(local_id, factura_nro, libro_id);
