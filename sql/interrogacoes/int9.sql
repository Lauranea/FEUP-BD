.mode columns
.headers on
.nullvalue NULL

with t1 as
(
select Jogador.nome as Jogador, Golo.idGolo as Golo
from Jogador left join Golo on Golo.idJogador = Jogador.idJogador
where Golo.idGolo is not null
order by 2 asc
),

t2 as
(
select t1.Jogador as Jogador, count(t1.Golo) as Golos
from t1
group by 1
)

select round(avg(t2.Golos),2)
from t2;