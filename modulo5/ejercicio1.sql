use bonus_track;

select artista, titulo , ano
from ultimos_lanzamientos
where ano = (select max(ano) from ultimos_lanzamientos)
order by artista,titulo;

select titulo
from top_spotify
where artista = 'Lady Gaga' and permanencia = (select max(permanencia) from top_spotify)
order by titulo asc;

select * from top_spotify;

select  artista, titulo,
case when genero='pop'  then 'pop'
when  genero ='electro' or genero = 'house'  then 'Electronica'
else 'otro'
end as Tipo
from top_spotify
order by artista,titulo asc;