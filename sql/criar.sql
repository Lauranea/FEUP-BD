CREATE TABLE estadio
(
    idEstadio NUMERIC(100) PRIMARY KEY,
    nome VARCHAR(50) CONSTRAINT NOT NULL,
    local1 VARCHAR(50) CONSTRAINT NOT NULL,
    UNIQUE (NOME)
    --UNIQUE (LOCAL1)
);

CREATE TABLE jogo
(
    idJogo NUMERIC PRIMARY KEY,
    data1 DATE CONSTRAINT jogo_data1_nn NOT NULL,
    hora_inicio TIME CONSTRAINT jogo_hora_inicio_nn NOT NULL,
    hora_fim TIME CONSTRAINT jogo_hora_fim_nn NOT NULL,
    estadio VARCHAR(50),
    FOREIGN KEY (estadio) REFERENCES idEstadio(estadio),
    CHECK (hora_fim > hora_inicio)
    --UNIQUE (data1, hora_inicio, hora_fim)
);

CREATE TABLE jogo_elem
(
    idJogo_fase_elem NUMERIC PRIMARY KEY,
    fase VARCHAR(50) CONSTRAINT jogo_elem_fase_nn NOT NULL,
    FOREIGN KEY (id_Jogo_fase_elem) REFERENCES idJogo(jogo),
);

CREATE TABLE jogo_grupo
(
    idJogo_fase_grupo NUMERIC,
    jornada VARCHAR(50) CONSTRAINT jogo_grupo_jornada_nn NOT NULL,
    FOREIGN KEY (idJogo_fase_grupo) REFERENCES idJogo(jogo),
    PRIMARY KEY (idJogo_fase_grupo)
);

CREATE TABLE grupos
(
    idGrupo NUMERIC PRIMARY KEY,
    idJogo_fase_grupo NUMERIC,
    pontos NUMERIC CONSTRAINT grupos_pontos_nn NOT NULL,
    lugar NUMERIC(4) CONSTRAINT grupos_lugar_nn NOT NULL,
    nome VARCHAR(50) CONSTRAINT grupos_nome_nn NOT NULL,
    FOREIGN KEY (idJogo_fase_grupo) REFERENCES idJogo_fase_grupo(jogo_grupo),
    UNIQUE (nome)
);

CREATE TABLE Equipa
(
    idEquipa NUMERIC,
    idGrupo NUMERIC,
    pais VARCHAR(50)        CONSTRAINT Equipa_pais_nn NOT NULL,
    sigla VARCHAR(3)        CONSTRAINT Equipa_sigla_nn NOT NULL,
    continente VARCHAR(50)  CONSTRAINT EQUIPA_continente_nn NOT NULL,
    FOREIGN KEY (idGrupo) REFERENCES idGrupo(Grupos),
    PRIMARY KEY (idEquipa),
    UNIQUE (pais),
    UNIQUE (sigla)
);

CREATE TABLE Jogador
(
    idJogador NUMERIC,
    idEquipa NUMERIC,
    altura NUMERIC       CONSTRAINT Jogador_altura_nn NOT NULL,
    peso NUMERIC         CONSTRAINT Jogador_peso_nn NOT NULL,
    numero NUMERIC(99,1) CONSTRAINT Jogador_numero_nn NOT NULL
                         CONSTRAINT CHECK (NUMERO >= 1 && NUMERO <= 99),
    nome VARCHAR(50)     CONSTRAINT Jogador_nome_nn NOT NULL,
    data_nascimento DATE CONSTRAINT Jogador_data_nascimento_nn NOT NULL,
    FOREIGN KEY (idEquipa) REFERENCES idEquipa(Equipa),
    PRIMARY KEY (idJogador),
);

CREATE TABLE EVENTO
(
    ID_EVENTO NUMERIC,
    MINUTO NUMERIC(60),
    PRIMARY KEY (ID_EVENTO)
);

CREATE TABLE GOLO
(
    ID_GOLO NUMERIC,
    ID_SOFRE NUMERIC,
    ID_MARCA NUMERIC,
    ID_JOGADOR NUMERIC,
    FOREIGN KEY (ID_GOLO) REFERENCES ID_EVENTO(EVENTO),
    FOREIGN KEY (ID_SOFRE) REFERENCES ID_EQUIPA(EQUIPA),
    FOREIGN KEY (ID_MARCA) REFERENCES ID_EQUIPA(EQUIPA),
    FOREIGN KEY (ID_JOGADOR) REFERENCES ID_JOGADOR(JOGADOR),
    PRIMARY KEY (ID_GOLO)
);