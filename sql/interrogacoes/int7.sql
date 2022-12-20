.mode columns
.headers on
.nullvalue NULL

select distinct e.pais, count(g.idMarca)
from Equipa e, Jogo j, Jogo_elem je, Golo g, Evento ev
where je.idJogo_fase_elem = j.idJogo and ev.idJogo =j.idJogo and g.idGolo = ev.idEvento
and je.fase = 'Final' 
and (e.idEquipa = j.idEquipa1 or e.idEquipa = j.idEquipa2)
and (g.idMarca = e.idEquipa) 
group by 1
order by 2 desc
limit 1;