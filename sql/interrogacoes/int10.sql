.mode columns
.headers on
.nullvalue NULL

with t1 as
(
select e.idEquipa as Equipa
from Equipa e, Grupos g
where g.nome = 'A' and g.idGrupo = e.idGrupo
)

select j.nome as Jogador
from Jogador j, t1
where j.idEquipa = t1.Equipa and j.nome like '%h%' and j.data_nascimento < '1997-01-01'
order by j.idJogador asc;
