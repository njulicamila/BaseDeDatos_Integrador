use libreria;

select * from libros
where precio > (select avg(precio) from libros);

select * from libros
where categoria = 'novelas' and precio >(select max(precio) from libros where categoria = 'ensayos')
order by precio desc;

select * from empleados
order by permanencia desc;

select nombre, apellido, puesto_id
from empleados
where puesto_id = (select max(puesto_id) from empleados)
order by puesto_id desc;

select libro_id,titulo,categoria,precio_publico,
case when precio < 15 then 'Economico'
when precio >= 15 and precio <=30 then 'Regular'
else 'Deluxe'
end as TIPO
from libros
where precio is not null
order by titulo asc;

select concat(nombre,",",apellido) as empleado , 'EMPLEADOS' as tipo
from empleados
where puesto_id = 9
union
select concat(nombre,", ",apellido) as empleado, 'EMPLEADOS ANTERIORES' as tipo 
from empleados_anteriores
where puesto_id = 9
order by empleado asc;

select l.libro_id,l.titulo,l.precio_publico,v.local_id,v.factura_nro,v.cantidad
from libros as l,ventas as v
where l.libro_id = v.libro_id
order by titulo asc;

select l.libro_id,l.titulo,l.precio_publico,v.local_id,v.factura_nro,v.cantidad , round(l.precio_publico * v.cantidad,2) as TOTAL
from libros as l,ventas as v
where l.libro_id = v.libro_id
order by titulo asc;

select l.titulo
from libros l left join ventas v on  l.libro_id = v.libro_id
where factura_nro is null
order by titulo asc;












