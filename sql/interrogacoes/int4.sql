.mode columns
.headers on
.nullvalue NULL

select e.pais, sum(j.peso)
from Jogador j, Equipa e
where j.idEquipa = e.idEquipa
group by 1
order by 2 asc
limit 1;
