.mode columns
.headers on
.nullvalue NULL

with t1 as(
select je.fase as FASE, j.idEquipa1 as e1, idEquipa2 as e2, (julianday(j.hora_fim)- julianday(j.hora_inicio) ) as TEMPO
from Jogo j, jogo_elem je, Equipa e
where je.idJogo_fase_elem =j.idJogo and j.idEquipa1!=j.idEquipa2 and (j.idEquipa1 = e.idEquipa or j.idEquipa2 = e.idEquipa) 
)

select t1.FASE, e1.sigla, e2.sigla
from t1, Equipa e1, Equipa e2
where e1.idEquipa = t1.e1 and e2.idEquipa = t1.e2 and t1.TEMPO
order by t1.TEMPO desc
limit 1;