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
INSERT INTO Grupos VALUES(1, 0, 0, 0, "A");
INSERT INTO Grupos VALUES(2, 0, 0, 0, "B");

--Table Equipa
--Grupo A
INSERT INTO Equipa VALUES(1, 1, "Catar", "Ásia", "QAT");
INSERT INTO Equipa VALUES(2, 1, "Equador", "América", "ECU");
INSERT INTO Equipa VALUES(3, 1, "Senegal", "África", "SEN");
INSERT INTO Equipa VALUES(4, 1, "Países Baixos", "Europa", "NED");
--Grupo B
INSERT INTO Equipa VALUES(5, 2, "Portugal", "Europa", "POR");
INSERT INTO Equipa VALUES(6, 2, "Gana", "África", "GHA");
INSERT INTO Equipa VALUES(7, 2, "Uruguai", "América", "URU");
INSERT INTO Equipa VALUES(8, 2, "Coreia do Sul", "Ásia", "KOR");

--Table Jogador


--Table Jogo
INSERT INTO Jogo VALUES(1, "2022-01-01", "19:00:00", "21:00:00", 1, "QAT");


--Table Jogo de fase de eliminação


--Table Jogo de fase de grupos

--Table Evento


--Table Golo
