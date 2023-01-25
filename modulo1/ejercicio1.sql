CREATE DATABASE BONUS_TRACK;
USE BONUS_TRACK;

CREATE TABLE AGENDA(
IDCONTACTO INT UNSIGNED PRIMARY KEY,
NOMBRE VARCHAR(20) NOT NULL,
APELLIDO VARCHAR(15) NOT NULL,
DOMICILIO VARCHAR(50),
TELEFONO INT  NOT NULL
);
SHOW DATABASES;
DESCRIBE AGENDA;

ALTER TABLE AGENDA
ADD MAIL VARCHAR(50)NOT NULL;

INSERT INTO AGENDA
VALUES(1,'ASHLEY','BENSON','CALLE FALSA',1122334455,'mail@mail.com'),
(2,"CHRIS","EVANS",'CALLE FALSA',1122334455,"mail@mail.com"),
(3,"MARIANA","DE LA CANAL",'CALLE FALSA',1122334455,"mail@mail.com"),
(4,"LEO","DAN",'CALLE FALSA',1122334455,"mail@mail.com"),
(5,"RICARDO","DARIN",'CALLE FALSA',1122334455,"mail@mail.com")
;