.mode columns
.headers on
.nullvalue NULL

select max(j.hora_fim-j.hora_inicio)
from Jogo j, Jogo_elem je
where je.idJogo_fase_elem = j.idJogo
group by j.idJogo;