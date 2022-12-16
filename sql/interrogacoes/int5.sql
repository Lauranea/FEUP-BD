.mode columns
.headers on
.nullvalue NULL

with t1 as
(select es.nome as ESTADIO , count(*) as NRJOGOS
from Estadio es, Jogo j
where es.idEstadio =j.idEstadio
group by 1
),
t2 as
(select es.nome as ESTADIO , count(*) as NRJOGOS
from Estadio es, Jogo j
where es.idEstadio =j.idEstadio
group by 1
)

select distinct t1.ESTADIO 
from t1, t2
where t1.ESTADIO != t2.ESTADIO and t1.NRJOGOS =t2.NRJOGOS 
and t1.NRJOGOS >= 2 and t2.NRJOGOS >= 2;