use bonus_track;

select * , 'ANTERIOR' as Estado
from top_spotify
where titulo like '%break%'
UNION ALL
select * , 'ULTIMO' as Estado
from ultimos_lanzamientos
where titulo like '%break%'
order by titulo asc;