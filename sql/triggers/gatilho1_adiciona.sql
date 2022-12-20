.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

CREATE TRIGGER IF NOT EXISTS equipas_validas
BEFORE INSERT ON Jogo_elem
FOR EACH ROW
WHEN exists
(

with t1 as
(
    select e1.idEquipa as pais, count(*) as maiores, e1.idGrupo as grupo
    from Equipa e2, Equipa e1
    where e1.idGrupo = e2.idGrupo and e1.pontos > e2.pontos 
    group by 1
),

t2 as
(
select t1.pais
from t1
where t1.maiores > 1
)

select *
from Jogo j, t2
where j.idJogo = new.idJogo_fase_elem and (j.idEquipa1 not in t2 or j.idEquipa2 not in t2)

)

BEGIN
    DELETE from jogo where new.idJogo_fase_elem = idJogo;
    SELECT RAISE(IGNORE);
END;

