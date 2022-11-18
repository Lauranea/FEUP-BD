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
INSERT INTO Equipa VALUES(6, 2, 0, "Suécia", "Europa", "SWE");
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
INSERT INTO Jogador VALUES(23, 3, 1, 1.93, 73, "Seny Dieng", 1994-11-23);
INSERT INTO Jogador VALUES(24, 3, 22, 1.87, 79, "Abdou Diallo", 1996-05-04);
INSERT INTO Jogador VALUES(25, 3, 14, 1.91, 76, "Formose Mendy", 2001-01-02);
INSERT INTO Jogador VALUES(26, 3, 4, 1.97, 83, "Pape Abou Cissé", 1995-09-14);
INSERT INTO Jogador VALUES(27, 3, 2, 1.99, 100, "Fodé Ballo-Touré", 1997-01-03);
INSERT INTO Jogador VALUES(28, 3, 17, 1.80, 130, "Pape Matar Sarr", 2002-09-14);
INSERT INTO Jogador VALUES(29, 3, 15, 1.73, 68, "Krépin Diatta", 1999-02-25);
INSERT INTO Jogador VALUES(30, 3, 26, 1.89, 79, "Pape Gueye", 1999-01-24);
INSERT INTO Jogador VALUES(31, 3, 7, 1.86, 78, "Nicolas Jackson", 1990-02-19);
INSERT INTO Jogador VALUES(32, 3, 10, 1.75, 69, "Sadio Mané", 1992-04-10);
INSERT INTO Jogador VALUES(33, 3, 9, 1.87, 70, "Iliman Ndiaye", 2000-03-06);

--Paises baixos
INSERT INTO Jogador VALUES(34, 4, 1, 1.87 , 88 , "Remko Pasveer", 1983-11-08);
INSERT INTO Jogador VALUES(35, 4, 4, 1.93 , 92 , "Virgil van Dijk", 1991-07-08);
INSERT INTO Jogador VALUES(36, 4, 17, 1.80, 71, "Daley Blind", 1990-03-09);
INSERT INTO Jogador VALUES(37, 4, 5, 1.80, 72, "Nathan Aké", 1995-02-18);
INSERT INTO Jogador VALUES(38, 4, 22,1.88 , 80, "Denzel Dumfries", 1996-04-18);
INSERT INTO Jogador VALUES(39, 4, 11, 1.82, 75, "Steven Berghuis", 1991-12-19);
INSERT INTO Jogador VALUES(40, 4, 14, 1.79, 70, "Davy Klaasseen", 1993-02-21);
INSERT INTO Jogador VALUES(41, 4, 20, 1.83, 77, "Teun Koopmeiners", 1998-02-28);
INSERT INTO Jogador VALUES(42, 4, 7, 1.78, 78, "Steven Bergwuijn", 1997-10-08);
INSERT INTO Jogador VALUES(43, 4, 9, 1.88, 86, "Luuk de Jong", 1990-08-27);
INSERT INTO Jogador VALUES(44, 4, 10, 1.76, 78, "Memphis Depay", 1994-02-13);

--Portugal
INSERT INTO Jogador VALUES(45, 5, 1, 1.90 , 84 , "Rui Patrício", 1983-11-08);
INSERT INTO Jogador VALUES(46, 5, 20, 1.89 , 79 , "Cristo Ranoldo", 1991-07-08);
INSERT INTO Jogador VALUES(47, 5, 3, 1.80 , 70 , "Pepe", 1990-03-09);
INSERT INTO Jogador VALUES(48, 5, 4, 1.70 , 80 , "Rubén Dias", 1995-02-18);
INSERT INTO Jogador VALUES(49, 5, 5, 1.73 , 76 , "Rafael Guerreiro", 1996-04-18);
INSERT INTO Jogador VALUES(50, 5, 8, 1.77 , 78 , "João Moutinho", 1991-12-19);
INSERT INTO Jogador VALUES(51, 5, 26, 1.76 , 79 , "João Palhinha", 1993-02-21);
INSERT INTO Jogador VALUES(52, 5, 11, 1.80 , 77 , "Bruno Fernandes", 1998-02-28);
INSERT INTO Jogador VALUES(53, 5, 9, 1.85 , 80 , "André Silva", 1997-10-08);
INSERT INTO Jogador VALUES(54, 5, 7, 1.90 , 80 , "Cristiano Ronaldo", 1990-08-27);
INSERT INTO Jogador VALUES(55, 5, 99, 1.99 , 99 , "Éder", 1999-09-09);

--Suecia
INSERT INTO Jogador VALUES(56, 6, 25, 1.98, 89, "Robin Olsen", 1990-01-08);
INSERT INTO Jogador VALUES(57, 6, 33, 1.89, 78, "Mikael Lustig", 1986-12-13);
INSERT INTO Jogador VALUES(58, 6, 2, 1.87, 89, "Vicor Nilsson-Lindelöf", 1994-07-17);
INSERT INTO Jogador VALUES(59, 6, 15, 1.80, 69, "Ken Sema", 1993-09-30);
INSERT INTO Jogador VALUES(60, 6, 17, 1.81, 74, "Ludwig Augustinsson", 1994-04-21);
INSERT INTO Jogador VALUES(61, 6, 7,1.78 , 70 , "Sebastian Larsson", 1985-06-06);
INSERT INTO Jogador VALUES(62, 6, 20,1.78 , 70 , "Kristoffer Olsson", 1995-06-30);
INSERT INTO Jogador VALUES(63, 6, 8,1.86 , 75 , "Albin Ekdal", 1989-07-28);
INSERT INTO Jogador VALUES(64, 6, 11, 1.79 , 70 , "Jesper Karlsson", 1998-07-25);
INSERT INTO Jogador VALUES(65, 6, 21, 1.86 , 80 , "Dejan Kulusevski", 2000-04-25);
INSERT INTO Jogador VALUES(66, 6, 36, 2.35, 97, "Zlatan Ibrahimovic", 1981-10-03);

--uruguai
INSERT INTO Jogador VALUES(67, 7, 1,1.90 ,84, "Fernando Muslera", 1986-06-16);
INSERT INTO Jogador VALUES(68, 7, 3,1.87 ,78 , "Diego Godín", 1986-02-16);
INSERT INTO Jogador VALUES(69, 7,19,1.96 ,85, "Sebasián Coates", 1990-10-07);
INSERT INTO Jogador VALUES(70, 7, 2,1.85 ,80, "José Giménez", 1995-01-20);
INSERT INTO Jogador VALUES(71, 7,22,1.80 ,76, "Martín Cáceres", 1987-04-07);
INSERT INTO Jogador VALUES(72, 7, 5,1.87 ,81, "Matías Vecino", 1991-08-24);
INSERT INTO Jogador VALUES(73, 7,10,1.72 ,73, "Giorgian de Arrascaeta", 1994-06-01);
INSERT INTO Jogador VALUES(74, 7,15,1.82 ,78, "Federico Valverde", 1998-07-22);
INSERT INTO Jogador VALUES(75, 7, 9,1.82 ,83, "Luis Suárez", 1987-01-24);
INSERT INTO Jogador VALUES(76, 7,21,1.84 ,71, "Edinson Cavani", 1987-02-14);
INSERT INTO Jogador VALUES(77, 7, 8,175. ,69, "Facundo Pellistri", 2001-12-20);

--coreia do sul
INSERT INTO Jogador VALUES(78, 8, 1,1.87 ,76, "Kim Seung-gyu", 1990-09-30);
INSERT INTO Jogador VALUES(79, 8, 2,1.75 ,64, "Yoon Jong-gyu", 1998-03-20);
INSERT INTO Jogador VALUES(80, 8,14,1.76 ,67, "Hong Chul", 1990-09-17);
INSERT INTO Jogador VALUES(81, 8,19,1.85 ,74, "Kim Young-gwon", 1990-02-27);
INSERT INTO Jogador VALUES(82, 8,24,1.82 ,79, "Cho Yu-min", 1996-04-18);
INSERT INTO Jogador VALUES(83, 8, 6,1.77 ,64, "Hwang In-beom", 1996-09-20);
INSERT INTO Jogador VALUES(84, 8, 7,1.83 ,78, "Son Heung-min", 1992-07-08);
INSERT INTO Jogador VALUES(85, 8,18,1.73 ,68, "Lee Kang-in", 2001-02-19);
INSERT INTO Jogador VALUES(86, 8,22,1.74 ,66, "Kwon Chang-hoon", 1994-07-30);
INSERT INTO Jogador VALUES(87, 8, 9,1.89 ,70, "Cho Gue-sung", 1998-01-25);
INSERT INTO Jogador VALUES(88, 8,16,1.85 ,70, "Hwang Ui-jo", 1992-08-28);

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
INSERT INTO Jogo_grupo VALUES(1, 1, 1);
INSERT INTO Jogo_grupo VALUES(2, 1, 1);
INSERT INTO Jogo_grupo VALUES(3, 2, 1);
INSERT INTO Jogo_grupo VALUES(4, 2, 1);

INSERT INTO Jogo_grupo VALUES(5, 1, 2);
INSERT INTO Jogo_grupo VALUES(6, 1, 2);
INSERT INTO Jogo_grupo VALUES(7, 2, 2);
INSERT INTO Jogo_grupo VALUES(8, 2, 2);

INSERT INTO Jogo_grupo VALUES(9, 1, 3);
INSERT INTO Jogo_grupo VALUES(10, 1, 3);
INSERT INTO Jogo_grupo VALUES(11, 2, 3);
INSERT INTO Jogo_grupo VALUES(12, 2, 3);

--Table Jogo de fase de eliminação
INSERT INTO Jogo_elem VALUES(1, 1);
INSERT INTO Jogo_elem VALUES(2, 1);
INSERT INTO Jogo_elem VALUES(3, 2);

--Table Evento / Golo
INSERT INTO Evento VALUES(1, 1, 60);
INSERT INTO Golo VALUES(1, 2, 1, 3);
INSERT INTO Evento VALUES(2, 1, 83);
INSERT INTO Golo VALUES(2, 2, 1, 5);
