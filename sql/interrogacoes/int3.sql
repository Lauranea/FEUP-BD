.mode columns
.headers on
.nullvalue NULL

select j.nome, e.pais
from Jogador j, Equipa e
where j.idEquipa =e.idEquipa
order by j.altura desc
limit 1;