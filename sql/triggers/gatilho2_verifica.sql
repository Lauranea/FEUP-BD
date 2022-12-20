.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

--- Equipa 1 ganha'

--os pontos antes do jogo:

select e.pais, e.pontos
from Equipa e;

--inserimos o jogo, com os golos, e damos o jogo como acabado

insert into jogo values(16, 2, 4, "2022-01-04", "19:00:00", "20:40:00", 2, 0);
insert into jogo_grupo values(16, 1, 2);

insert into Evento VALUES(38, 16, 56);
insert into Golo VALUES(38, 2, 4, 20);

update jogo set acabado = 1 where jogo.idjogo = 16;

--os pontos sao atualizados na equipa vencedora
select e.pais, e.pontos
from Equipa e;


--- Equipa 2 ganha

--os pontos antes do jogo:

select e.pais, e.pontos
from Equipa e;

--inserimos o jogo, com os golos, e damos o jogo como acabado

insert into jogo values(17, 2, 4, "2022-01-07", "19:00:00", "21:00:00", 2, 0);
insert into jogo_grupo values(17, 1, 2);

insert into Evento VALUES(39, 17, 59);
insert into Golo VALUES(39, 4, 2, 37);
insert into Evento VALUES(40, 17, 67);
insert into Golo VALUES(40, 2, 4, 19);
insert into Evento VALUES(41, 17, 89);
insert into Golo VALUES(41, 4, 2, 38);

update jogo set acabado = 1 where jogo.idjogo = 17;

--os pontos sao atualizados na equipa vencedora
select e.pais, e.pontos
from Equipa e;

--- Empate

--os pontos antes do jogo:

select e.pais, e.pontos
from Equipa e;

--inserimos o jogo, com os golos, e damos o jogo como acabado

insert into jogo values(18, 2, 4, "2022-01-09", "19:00:00", "20:58:00", 2, 0);
insert into jogo_grupo values(18, 1, 2);

insert into Evento VALUES(42, 18, 20);
insert into Golo VALUES(42, 4, 2, 35);
insert into Evento VALUES(43, 18, 30);
insert into Golo VALUES(43, 2, 4, 21);

update jogo set acabado = 1 where jogo.idjogo = 18;

--os pontos sao atualizados na equipas que empataram
select e.pais, e.pontos
from Equipa e;