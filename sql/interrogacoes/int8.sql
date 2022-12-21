.mode columns
.headers on
.nullvalue NULL

--é necessário ler o gatilho 2 antes do povoar para esta interrogação funcionar
with t1 as
(
    select e1.sigla as pais, count(*) as maiores, e1.idGrupo as grupo
    from Equipa e2, Equipa e1
    where e1.idGrupo = e2.idGrupo and e1.pontos > e2.pontos 
    group by 1
)


select t1.pais
from t1
where t1.maiores > 1;