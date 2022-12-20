.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;



INSERT INTO Jogo VALUES(17, 4, 2, "2022-02-01", "19:00:00", "20:50:00", 3, 1);


.print 'foi introduzido o seguinte jogo:'


select idJogo, idEquipa1, idEquipa2
from Jogo 
where idJogo = 17; 

.print 'Agora, tentamos introduzir esse jogo como um jogo da fase de eliminação'
--tentar inserir um jogo na final com equipas que nao passaram a fase de eliminação

INSERT INTO Jogo_elem VALUES(17, "Finals");

.print 'Como as equipas não passaram a fase de eliminação, não é possivel adicionar o jogo, ignorando o  ultimo inseret, e apagando o jogo que foi introduzido anteriormente'

-- para verificar que não foi adicionado:
select idJogo_fase_elem from Jogo_elem;