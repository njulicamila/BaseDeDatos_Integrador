use bonus_track;

select concat(artista,"-",titulo) as cancion, genero
from top_spotify
order by CANCION asc;

select concat_ws('-',artista,titulo) as cancion, genero
from top_spotify
order by CANCION asc;

select concat(artista,"-",titulo) as cancion, upper(genero)
from top_spotify
order by CANCION asc;

select concat(artista,"-",titulo) as cancion, upper(genero) ,year(curdate()) - ano as años
from top_spotify
order by CANCION asc;

select count(*) as Cantidad_Registros
from top_spotify;

select count(*) as Cantidad_Canciones , ano
from top_spotify
group by ano;

select count(*) as Cantidad_Canciones , ano
from top_spotify
group by ano
having Cantidad_Canciones < 50;





