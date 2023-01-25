USE BONUS_TRACK;

DESCRIBE TOP_SPOTIFY;
SELECT * FROM TOP_SPOTIFY;
SELECT ARTISTA, TITULO, GENERO FROM TOP_SPOTIFY;
SELECT ARTISTA, TITULO, GENERO FROM TOP_SPOTIFY ORDER BY GENERO;
SELECT ARTISTA, TITULO, GENERO FROM TOP_SPOTIFY
ORDER BY GENERO, ARTISTA;

#ejercicio 2

select top_spotify.artista, top_spotify.titulo , top_spotify.genero
from top_spotify
order by artista,titulo asc limit 10;

select top_spotify.artista, top_spotify.titulo , top_spotify.genero
from top_spotify
order by artista,titulo asc limit 11,5;

select top_spotify.artista, top_spotify.titulo , top_spotify.genero
from top_spotify
where ARTISTA = "Madonna";

select top_spotify.artista, top_spotify.titulo , top_spotify.genero
from top_spotify
where genero = "Pop"
order by titulo asc;

select *
from top_spotify
where ano = 2015
order by artista,titulo;

select *
from top_spotify
where ano < 2011 and genero = "Pop"
order by titulo;