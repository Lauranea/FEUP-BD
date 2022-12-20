.mode columns
.headers on
.nullvalue NULL

select j.nome
from Jogador j, Golo g

Except

select j.nome
from Jogador j, Golo g
where g.idJogador = j.idJogador
group by 1;