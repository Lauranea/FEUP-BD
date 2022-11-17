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
--Catar
INSERT INTO Jogador VALUES(1, 1, 1, 1.85, 83, "Saad al-Sheeb", 1990-02-19);
INSERT INTO Jogador VALUES(2, 1, 5, 1.75, 77, "Bassam Al-Rawi", 1997-12-16);
INSERT INTO Jogador VALUES(3, 1, 6, 1.79, 71, "Tarek Salman", 1997-12-05);
INSERT INTO Jogador VALUES(4, 1, 16, 1.83, 78, "Boualem Khoukhi", 1990-07-09);
INSERT INTO Jogador VALUES(5, 1, 2, 1.88, 73, "Ró-Ró", 1990-08-06);
INSERT INTO Jogador VALUES(6, 1, 3, 1.86, 82, "Abdelkarim Hassan", 1993-08-28);
INSERT INTO Jogador VALUES(7, 1, 11, 1.84, 70, "Abdulaziz Hatem", 1990-01-01);
INSERT INTO Jogador VALUES(8, 1, 10, 1.70, 62, "Hassan Al-Haydos", 1990-12-11);
INSERT INTO Jogador VALUES(9, 1, 23, 1.68, 71, "Assim Madibo", 1996-10-22);
INSERT INTO Jogador VALUES(10, 1, 15, 1.77, 68, "Akram Afif", 1996-11-18);
INSERT INTO Jogador VALUES(11, 1, 11, 1.80, 68, "Almoez Ali", 1996-08-19);

--Equador
INSERT INTO Jogador VALUES(12, 2, 12, 1.85, 75, "Moisés Ramírez", 2000-09-09);
INSERT INTO Jogador VALUES(13, 2, 3, 1.83, 66, "Piero Hincapié", 2002-01-09);
INSERT INTO Jogador VALUES(14, 2, 4, 1.79, 70, "Robert Arboleda", 1991-10-22);
INSERT INTO Jogador VALUES(15, 2, 6, 1.69 , 65, "Diego Palacios", 1999-07-12);
INSERT INTO Jogador VALUES(16, 2, 7, 1.75, 73, "Pervis Estupiñán", 1998-01-21);
INSERT INTO Jogador VALUES(17, 2, 15, 1.68, 62, "Ángel Mena", 1988-01-21);
INSERT INTO Jogador VALUES(18, 2, 19, 1.78, 65, "Gonzalo Plata", 2000-11-01);
INSERT INTO Jogador VALUES(19, 2, 8, 1.73,  67, "Carlos Gruezo", 1995-04-19);
INSERT INTO Jogador VALUES(20, 2, 9, 1.66, 71, "Djorkaeff Reasco", 1999-01-18);
INSERT INTO Jogador VALUES(21, 2, 11, 1.88, 86, "Michel Estrada", 1989-04-07);
INSERT INTO Jogador VALUES(22, 2, 13, 1.77, 74, "Enner Valencia", 1989-09-04);

--Senegal
INSERT INTO Jogador VALUES(23, 3, 1, 1.93, , "Seny Dieng", 1994-11-23);
INSERT INTO Jogador VALUES(24, 3, 22, 1.87, 79, "Abdou Diallo", 1996-05-04);
INSERT INTO Jogador VALUES(25, 3, 14, 1.91, 76, "Formose Mendy", 2001-01-02);
INSERT INTO Jogador VALUES(26, 3, 4, 1.97, 83, "Pape Abou Cissé", 1995-09-14);
INSERT INTO Jogador VALUES(27, 3, 2, 1.99, 100, "Fodé Ballo-Touré", 1997-01-03);
INSERT INTO Jogador VALUES(28, 3, 17, 1.80, 80, "Pape Matar Sarr", 2002-09-14);
INSERT INTO Jogador VALUES(29, 3, 15, 1.73, 68, "Krépin Diatta", 1999-02-25);
INSERT INTO Jogador VALUES(30, 3, 26, 1.89, 79, "Pape Gueye", 1999-01-24);
INSERT INTO Jogador VALUES(31, 3, 7, 1.86, 78, "Nicolas Jackson", 1990-02-19);
INSERT INTO Jogador VALUES(32, 3, 10, 1.75, 69, "Sadio Mané", 1992-04-10);
INSERT INTO Jogador VALUES(33, 3, 9, 1.87, 70, "Iliman Ndiaye", 2000-03-06);

--Paises baixos
INSERT INTO Jogador VALUES(23, 4, 1, , , "Remko Pasveer", 1983-11-8);
INSERT INTO Jogador VALUES(24, 4, 4, , , "Virgil van Dijk", 1991-02-18);
INSERT INTO Jogador VALUES(25, 4, 17, , , "Daley Blind", 1990-03-09);
INSERT INTO Jogador VALUES(26, 4, 4, , , "Nathan Aké", 1995-02-18);
INSERT INTO Jogador VALUES(27, 4, 2, , , "Fodé Ballo-Touré", 1997-01-03);
INSERT INTO Jogador VALUES(28, 4, 17, , , "Pape Matar Sarr", 2002-09-14);
INSERT INTO Jogador VALUES(29, 4, 15, , , "Krépin Diatta", 1999-02-25);
INSERT INTO Jogador VALUES(30, 4, 26, , , "Pape Gueye", 1999-01-24);
INSERT INTO Jogador VALUES(31, 4, 7, , , "Nicolas Jackson", 1990-02-19);
INSERT INTO Jogador VALUES(32, 4, 10, , , "Sadio Mané", 1992-04-10);
INSERT INTO Jogador VALUES(33, 4, 9, , , "Iliman Ndiaye", 2000-03-06);

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
INSERT INTO Jogo VALUES(13, 1, 7, "2022-01-22", "19:00:00", "21:00:00", 5);
INSERT INTO Jogo VALUES(14, 3, 5, "2022-01-22", "19:00:00", "21:00:00", 6);

--Final
INSERT INTO Jogo VALUES(15, 1, 5, "2022-01-29", "19:00:00", "21:00:00", 7);

--Table Jogo de fase de grupos
INSERT INTO Jogo_grupo VALUES(1, 1);
INSERT INTO Jogo_grupo VALUES(2, 1);
INSERT INTO Jogo_grupo VALUES(3, 1);
INSERT INTO Jogo_grupo VALUES(4, 1);

INSERT INTO Jogo_grupo VALUES(5, 2);
INSERT INTO Jogo_grupo VALUES(6, 2);
INSERT INTO Jogo_grupo VALUES(7, 2);
INSERT INTO Jogo_grupo VALUES(8, 2);

INSERT INTO Jogo_grupo VALUES(9, 3);
INSERT INTO Jogo_grupo VALUES(10, 3);
INSERT INTO Jogo_grupo VALUES(11, 3);
INSERT INTO Jogo_grupo VALUES(12, 3);

--Table Jogo de fase de eliminação
INSERT INTO Jogo_elem VALUES(1, 1);
INSERT INTO Jogo_elem VALUES(2, 1);
INSERT INTO Jogo_elem VALUES(3, 2);

--Table Evento


--Table Golo
