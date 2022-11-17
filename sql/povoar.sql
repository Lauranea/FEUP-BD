PRAGMA foreign_keys = ON;



--Table Estadio
INSERT INTO Estadio VALUES(1, "Lusail", "Lusail Iconic Stadium");
INSERT INTO Estadio VALUES(2, "Al Khor", "Al Bayt Stadium");
INSERT INTO Estadio VALUES(3, "Doha", "Stadium 974");
INSERT INTO Estadio VALUES(4, "Doha", "Al Thumama Stadium");
INSERT INTO Estadio VALUES(5, "Al Rayyan", "Khalifa International Stadium");
INSERT INTO Estadio VALUES(6, "Al Rayyan", "Education City Stadium");
INSERT INTO Estadio VALUES(7, "Al Rayyan", "Ahmad bin Ali Stadium");
INSERT INTO Estadio VALUES(8, "Al Wakrah", "Al Janoub Stadium");

--Table Grupos
INSERT INTO Grupos VALUES(1, "A");
INSERT INTO Grupos VALUES(2, "B");

--Table Equipa
--Grupo A
INSERT INTO Equipa VALUES(1, 1, 0, "Catar", "Ásia", "QAT");
INSERT INTO Equipa VALUES(2, 1, 0, "Equador", "América", "ECU");
INSERT INTO Equipa VALUES(3, 1, 0, "Senegal", "África", "SEN");
INSERT INTO Equipa VALUES(4, 1, 0, "Países Baixos", "Europa", "NED");
--Grupo B
INSERT INTO Equipa VALUES(5, 2, 0, "Portugal", "Europa", "POR");
INSERT INTO Equipa VALUES(6, 2, 0, "Gana", "África", "GHA");
INSERT INTO Equipa VALUES(7, 2, 0, "Uruguai", "América", "URU");
INSERT INTO Equipa VALUES(8, 2, 0, "Coreia do Sul", "Ásia", "KOR");

--Table Jogador


--Table Jogo
--Grupos
INSERT INTO Jogo VALUES(1, 1, 2, "2022-01-01", "19:00:00", "21:00:00", 1);
INSERT INTO Jogo VALUES(2, 3, 4, "2022-01-01", "19:00:00", "21:00:00", 2);
INSERT INTO Jogo VALUES(3, 5, 6, "2022-01-01", "19:00:00", "21:00:00", 3);
INSERT INTO Jogo VALUES(4, 7, 8, "2022-01-01", "19:00:00", "21:00:00", 4);

INSERT INTO Jogo VALUES(5, 1, 3, "2022-01-08", "19:00:00", "21:00:00", 5);
INSERT INTO Jogo VALUES(6, 2, 4, "2022-01-08", "19:00:00", "21:00:00", 6);
INSERT INTO Jogo VALUES(7, 5, 7, "2022-01-08", "19:00:00", "21:00:00", 7);
INSERT INTO Jogo VALUES(8, 6, 8, "2022-01-08", "19:00:00", "21:00:00", 8);

INSERT INTO Jogo VALUES(9, 1, 4, "2022-01-15", "19:00:00", "21:00:00", 1);
INSERT INTO Jogo VALUES(10, 2, 3, "2022-01-15", "19:00:00", "21:00:00", 2);
INSERT INTO Jogo VALUES(11, 5, 8, "2022-01-15", "19:00:00", "21:00:00", 3);
INSERT INTO Jogo VALUES(12, 6, 7, "2022-01-15", "19:00:00", "21:00:00", 4);

--Meias de final
INSERT INTO Jogo VALUES(11, 1, 7, "2022-01-22", "19:00:00", "21:00:00", 5);
INSERT INTO Jogo VALUES(12, 3, 5, "2022-01-22", "19:00:00", "21:00:00", 6);

--Final
INSERT INTO Jogo VALUES(13, 1, 5, "2022-01-29", "19:00:00", "21:00:00", 7);


--Table Jogo de fase de grupos

--Table Jogo de fase de eliminação


--Table Evento


--Table Golo
