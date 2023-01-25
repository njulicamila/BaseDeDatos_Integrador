update autores
set nombre = 'Esteban'
where apellido = 'Echeverria';

alter table empleados
add column permanencia int;

update empleados
set permanencia = year(curdate()) - year(fecha_ingreso);


alter table libros
add column precio_publico double;

update libros
set precio_publico = round(precio * 1.21,2);

# ejercicio 3

create table empleados_anteriores
select *
from empleados
where apellido = 'Thomas' or apellido = 'Pereira' or apellido = 'Devo';

delete from empleados where apellido = 'Thomas' or apellido = 'Pereira' or apellido = 'Devo';

insert into empleados_anteriores
select *
from empleados
where apellido = 'cruz';

delete from empleados where apellido = 'cruz';
