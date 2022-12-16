.mode columns
.headers on
.nullvalue NULL

select sigla
from Golo g, Equipa e
where e.idEquipa = g.idMarca
group by e.sigla
having count(*)
order by count(*) desc
limit 1;
