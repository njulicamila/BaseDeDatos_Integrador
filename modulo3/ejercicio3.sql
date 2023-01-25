use libreria;

select year(curdate()) - year(fecha_ingreso) as ANTIGUEDAD, concat(apellido, ", ",nombre) as EMPLEADO
from empleados;

select titulo , precio as MENOR_PRECIO
from libros
where precio > 0
order by precio asc limit 1;

select precio as MAYOR_PRECIO
from libros
where precio > 0
order by precio desc limit 1;

select precio as MAYOR_PRECIO
from libros
where precio > 0
order by precio desc limit 1;

select categoria, round(sum(precio) / char_length(precio),2) as PRECIO_PROMEDIO
from libros
group by categoria;

select categoria, round(sum(precio) / char_length(precio),2) as PRECIO_PROMEDIO
from libros
group by categoria
having PRECIO_PROMEDIO is not null;


