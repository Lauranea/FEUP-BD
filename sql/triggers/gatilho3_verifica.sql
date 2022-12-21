.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;



--inserimos 4 jogos na semi final que se encontra vazia

INSERT INTO Jogo_elem VALUES(16, "Quartos-Finais");
INSERT INTO Jogo_elem VALUES(17, "Quartos-Finais");
INSERT INTO Jogo_elem VALUES(18, "Quartos-Finais");
INSERT INTO Jogo_elem VALUES(19, "Quartos-Finais");
INSERT INTO Jogo VALUES(16, 1, 6, "2022-01-22", "19:00:00", "21:00:00", 1, 0);
INSERT INTO Jogo VALUES(17, 3, 5, "2022-01-22", "19:00:00", "20:47:00", 2, 0);
INSERT INTO Jogo VALUES(18, 6, 1, "2022-01-22", "19:00:00", "21:00:00", 1, 0);
INSERT INTO Jogo VALUES(19, 5, 3, "2022-01-22", "19:00:00", "20:47:00", 2, 0);

--verificamos que os jogos existem
select * from Jogo;
select * from Jogo_elem;

--tentar inserir um 5o jogo na fase quartos-finais
INSERT INTO Jogo VALUES(20, 6, 3, "2022-01-22", "19:00:00", "20:47:00", 2, 0); 
INSERT INTO Jogo_elem VALUES(20, "Quartos-Finais");

--verificar que o jogo nao foi inserido porque passa do limite (4 jogos)
select * from Jogo;
select * from Jogo_elem;