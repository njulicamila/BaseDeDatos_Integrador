use libreria;

select *
from autores
where ciudad = "Ciudad de Buenos Aires";

select *
from libros
where precio >= 30
order by precios desc;

select *
from autores
where provincia != "BA"
order by provincia asc;

select *
from libros
where categoria = "cuentos" and precio < 20
order by titulo asc;

select *
from libros
where categoria = "novelas" or categoria = "ensayos" 
order by titulo asc;

select *
from libros
where precio >= 20 and precio <= 35
order by precios asc;

select *
from autores
where nombre = "Jorge Luis" or nombre = "victoria" or nombre = "Ernesto" or nombre = "adolfo"
order by nombre asc;

select *
from libros
where titulo = "%mundo%"
order by titulo asc;

select *
from libros
where titulo = "%de%"
order by titulo asc;

select *
from libros
where precio = null
order by titulo asc;
