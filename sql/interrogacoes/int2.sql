.mode columns
.headers on
.nullvalue NULL

select j.nome 
from Jogador j, Equipa e 
where j.idEquipa= e.idEquipa
except
select j.nome 
from Jogador j, Equipa e 
where j.idEquipa= e.idEquipa 
and e.continente = 'Europa' 
or (j.altura > 1.75 and j.altura < 1.85 and e.continente = 'Europa');
