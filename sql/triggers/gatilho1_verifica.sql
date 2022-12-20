.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

INSERT INTO Jogo VALUES(17, 4, 2, "2022-02-01", "19:00:00", "20:50:00", 3, 1);

--tentar inserir um jogo na final com equipas que nao passaram a fase de eliminação

INSERT INTO Jogo_elem VALUES(17, "Finals");

-- para verificar que não foi adicionado:
--select idJogo_fase_elem from Jogo_elem;