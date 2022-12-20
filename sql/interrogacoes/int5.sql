.mode columns
.headers on
.nullvalue NULL

with t1 as
(select es.nome as ESTADIO , count(*) as NRJOGOS
from Estadio es, Jogo j
where es.idEstadio =j.idEstadio
group by 1
)

select distinct tt1.ESTADIO, tt1.NRJOGOS
from t1 tt1, t1 tt2
where tt1.ESTADIO != tt2.ESTADIO and tt1.NRJOGOS =tt2.NRJOGOS 
and tt1.NRJOGOS >= 2 and tt2.NRJOGOS >= 2;