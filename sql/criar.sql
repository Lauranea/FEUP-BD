CREATE TABLE estadio
(
    idEstadio NUMERIC(100) PRIMARY KEY,
    nome VARCHAR(50) CONSTRAINT NOT NULL,
    local1 VARCHAR(50) CONSTRAINT NOT NULL,
    UNIQUE (NOME)
    --UNIQUE (LOCAL1)
);

CREATE TABLE Jogo
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

CREATE TABLE Jogo_Elem
(
    idJogo_fase_elem NUMERIC PRIMARY KEY,
    fase VARCHAR(50) CONSTRAINT jogo_elem_fase_nn NOT NULL,
    FOREIGN KEY (idJogo_fase_elem) REFERENCES idJogo(Jogo),
);

CREATE TABLE Jogo_Grupo
(
    idJogo_fase_grupo NUMERIC,
    jornada VARCHAR(50) CONSTRAINT jogo_grupo_jornada_nn NOT NULL,
    FOREIGN KEY (idJogo_fase_grupo) REFERENCES idJogo(Jogo),
    PRIMARY KEY (idJogo_fase_grupo)
);

CREATE TABLE Grupos
(
    idGrupo NUMERIC PRIMARY KEY,
    idJogo_fase_grupo NUMERIC,
    pontos NUMERIC CONSTRAINT grupos_pontos_nn NOT NULL,
    lugar NUMERIC(4) CONSTRAINT grupos_lugar_nn NOT NULL,
    nome VARCHAR(50) CONSTRAINT grupos_nome_nn NOT NULL,
    FOREIGN KEY (idJogo_fase_grupo) REFERENCES idJogo_fase_grupo(Jogo_grupo),
    UNIQUE (nome)
);

CREATE TABLE Equipa
(
    idEquipa NUMERIC PRIMARY KEY,
    idGrupo NUMERIC,
    pais VARCHAR(50)        CONSTRAINT Equipa_pais_nn NOT NULL,
    sigla VARCHAR(3)        CONSTRAINT Equipa_sigla_nn NOT NULL,
    continente VARCHAR(50)  CONSTRAINT EQUIPA_continente_nn NOT NULL,
    FOREIGN KEY (idGrupo) REFERENCES idGrupo(Grupos),
    UNIQUE (pais),
    UNIQUE (sigla)
);

CREATE TABLE Jogador
(
    idJogador NUMERIC PRIMARY KEY,
    idEquipa NUMERIC,
    altura NUMERIC       CONSTRAINT Jogador_altura_nn NOT NULL,
                         CONSTRAINT Jogador_altura_positiva CHECK (altura>0),

    peso NUMERIC         CONSTRAINT Jogador_peso_nn NOT NULL,
                         CONSTRAINT Jogador_peso_positivo CHECK (peso>0),

    numero NUMERIC(99,1) CONSTRAINT Jogador_numero_nn NOT NULL
                         CONSTRAINT CHECK (NUMERO >= 1 && NUMERO <= 99),
    nome VARCHAR(50)     CONSTRAINT Jogador_nome_nn NOT NULL
                         CONSTRAINT nome_unique UNIQUE,
    data_nascimento DATE CONSTRAINT Jogador_data_nascimento_nn NOT NULL,
    FOREIGN KEY (idEquipa) REFERENCES idEquipa(Equipa),
);

CREATE TABLE Evento
(
    idEvento NUMERIC PRIMARY KEY,
    minuto NUMERIC(60)  CONSTRAINT Evento_minuto_nn NOT NULL
                        CONSTRAINT Evento_minuto_positive CHECK(minuto>0),
);

CREATE TABLE Golo
(
    idGolo NUMERIC PRIMARY KEY,
    idSofre NUMERIC,
    idMarca NUMERIC,
    idJogador NUMERIC,
    FOREIGN KEY (idGolo) REFERENCES idEvento(Evento),
    FOREIGN KEY (idSofre) REFERENCES idEquipa(Equipa),
    FOREIGN KEY (idMarca) REFERENCES idEquipa(Equipa),
    FOREIGN KEY (ID_JOGADOR) REFERENCES idJogador(Jogador),
);