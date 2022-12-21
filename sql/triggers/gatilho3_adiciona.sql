.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

CREATE TRIGGER IF NOT EXISTS abc
BEFORE INSERT ON Jogo_elem
FOR EACH ROW
when exists 
(

with t1 as
(
select count(*) as jogos
from Jogo_elem j
where j.fase = new.fase
)

select *
from t1
where (t1.jogos = 2 and new.fase = 'Semi-Finais') or (t1.jogos = 1 and new.fase = 'Final') or (t1.jogos = 4 and new.fase = 'Quartos-Finais') or (t1.jogos = 8 and new.fase = 'Oitavos-Finais')
)
BEGIN
    DELETE from jogo where new.idJogo_fase_elem = idJogo;
    SELECT RAISE(IGNORE);
END;

