PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS Estadio;
DROP TABLE IF EXISTS Jogo;
DROP TABLE IF EXISTS Jogo_elem;
DROP TABLE IF EXISTS Jogo_grupo;
DROP TABLE IF EXISTS Grupos;
DROP TABLE IF EXISTS Equipa;
DROP TABLE IF EXISTS Jogador;
DROP TABLE IF EXISTS Evento;
DROP TABLE IF EXISTS Golo;

--Table Estadio
CREATE TABLE Estadio
(
    idEstadio           INTEGER         CONSTRAINT idEstadio_pk PRIMARY KEY
                                        DEFAULT 0,
    local1              TEXT            CONSTRAINT Estadio_local1_nn NOT NULL,

    nome                TEXT            CONSTRAINT Estadio_nome_nn NOT NULL,
    
    CONSTRAINT Estadio_nome_unique UNIQUE (nome)
);

--Table Jogo
CREATE TABLE Jogo
(
    idJogo              INTEGER         CONSTRAINT idJogo_pk PRIMARY KEY
                                        DEFAULT 0,
    
    idEquipa1           INTEGER         CONSTRAINT idEquipa1_pk
                                        DEFAULT 0,
    idEquipa2           INTEGER         CONSTRAINT idEquipa2_pk
                                        DEFAULT 0,

    data1               DATE            CONSTRAINT Jogo_data1_nn NOT NULL,

    hora_inicio         TIME            CONSTRAINT Jogo_hora_inicio_nn NOT NULL,
    hora_fim            TIME            CONSTRAINT Jogo_hora_fim_nn NOT NULL,

    idEstadio           INTEGER         DEFAULT 0
        	                            CONSTRAINT fk_estadio_estadio REFERENCES Estadio(idEstadio)
                                        ON UPDATE CASCADE
                                        ON DELETE SET DEFAULT,

    Acabado             INTEGER         DEFAULT 0
                                        CONSTRAINT Jogo_Acabado_nn NOT NULL
                                        CONSTRAINT Jogo_Acabado_Invalido check (Acabado == 0 or Acabado == 1),

    CONSTRAINT Jogo_hora_fim_maior_hora_inicio CHECK (hora_fim > hora_inicio)

    --UNIQUE (data1, hora_inicio, hora_fim)
);

--Table Jogo de fase de eliminação
CREATE TABLE Jogo_elem
(
    idJogo_fase_elem    INTEGER         CONSTRAINT idJogo_fase_elem_pk PRIMARY KEY
                                        DEFAULT 0
                                        CONSTRAINT fk_Jogo_fase_elem_idJogo REFERENCES Jogo(idJogo)
                                        ON UPDATE CASCADE
                                        ON DELETE SET DEFAULT,

    fase                TEXT            CONSTRAINT Jogo_elem_fase_nn NOT NULL
);

--Table Jogo de fase de grupos
CREATE TABLE Jogo_grupo
(
    idJogo_fase_grupo   INTEGER         CONSTRAINT idJogo_fase_grupo_pk PRIMARY KEY
                                        DEFAULT 0
                                        CONSTRAINT fk_idJogo_fase_grupo_idJogo REFERENCES Jogo(idJogo) 
                                        ON UPDATE CASCADE
                                        ON DELETE SET DEFAULT,
    idGrupo             INTEGER         DEFAULT 0
                                        CONSTRAINT fk_jogoGrupo_idGrupo REFERENCES Grupos(idGrupo),

    jornada             INTEGER         CONSTRAINT Jogo_grupo_jornada_nn NOT NULL
);

--Table Grupos
CREATE TABLE Grupos
(
    idGrupo             INTEGER         CONSTRAINT idGrupo_pk PRIMARY KEY
                                        DEFAULT 0,

    nome                TEXT            CONSTRAINT Grupos_nome_nn NOT NULL,

    CONSTRAINT Grupos_nome_unique UNIQUE (nome)
);

--Table Equipa
CREATE TABLE Equipa
(
    idEquipa            INTEGER         CONSTRAINT idEquipa_pk PRIMARY KEY
                                        DEFAULT 0,
    idGrupo             INTEGER         DEFAULT 0
                                        CONSTRAINT fk_idGrupo_idGrupo REFERENCES Grupos(idGrupo)
                                        ON UPDATE CASCADE
                                        ON DELETE SET DEFAULT,
    
    pontos              INTEGER         CONSTRAINT Grupos_pontosEquipa_nn NOT NULL,

    pais                TEXT            CONSTRAINT Equipa_pais_nn NOT NULL,
    continente          TEXT            CONSTRAINT EQUIPA_continente_nn NOT NULL,

    sigla               CHAR(3)         CONSTRAINT Equipa_sigla_nn NOT NULL,

    CONSTRAINT Equipa_pais_sigla_unique UNIQUE (pais, sigla)
);

--Table Jogador
CREATE TABLE Jogador
(
    idJogador           INTEGER         CONSTRAINT idJogador_pk PRIMARY KEY
                                        DEFAULT 0,
    idEquipa            INTEGER         DEFAULT 0
                                        CONSTRAINT fk_idEquipa_idEquipa REFERENCES Equipa(idEquipa)
                                        ON UPDATE CASCADE
                                        ON DELETE SET DEFAULT,
    numero              INTEGER         CONSTRAINT Jogador_numero_nn NOT NULL
                                        CONSTRAINT Jogador_numero_1_99 CHECK (numero >= 1 AND numero <= 99),

    altura              DECIMAL(1,2)    CONSTRAINT Jogador_altura_nn NOT NULL,
                                        
    peso                FLOAT           CONSTRAINT Jogador_peso_nn NOT NULL,
                                        
    
    nome                TEXT            CONSTRAINT Jogador_nome_nn NOT NULL,

    data_nascimento     DATE            CONSTRAINT Jogador_data_nascimento_nn NOT NULL
                                        CONSTRAINT Jogador_18_anos CHECK (data_nascimento < 2004-01-01)
);

--Table Evento
CREATE TABLE Evento
(
    idEvento            INTEGER         CONSTRAINT idEvento_pk PRIMARY KEY
                                        DEFAULT 0,
    idJogo              INTEGER         CONSTRAINT fk_Evento_idJogo REFERENCES Jogo(idJogo)
                                        DEFAULT 0,
    minuto              INTEGER         CONSTRAINT Evento_minuto_nn NOT NULL
                                        CONSTRAINT Evento_minuto_impossivel CHECK (minuto > 0)
);

--Table Golo
CREATE TABLE Golo
(
    idGolo              INTEGER         CONSTRAINT idGolo_pk PRIMARY KEY AUTOINCREMENT
                                        DEFAULT 0
                                        CONSTRAINT fk_idGolo_idEvento REFERENCES Evento(idEvento)
                                        ON UPDATE CASCADE
                                        ON DELETE SET DEFAULT,
    idMarca             INTEGER         DEFAULT 0
                                        CONSTRAINT fk_idMarca_idEquipa REFERENCES Equipa(idEquipa) 
                                        ON UPDATE CASCADE
                                        ON DELETE SET DEFAULT,
    idSofre             INTEGER         DEFAULT 0
                                        CONSTRAINT fk_idSofre_idEquipa REFERENCES Equipa(idEquipa)  
                                        ON UPDATE CASCADE
                                        ON DELETE SET DEFAULT,
    idJogador           INTEGER         DEFAULT 0
                                        CONSTRAINT fk_idJogador_idJogador REFERENCES Jogador(idJogador) 
                                        ON UPDATE CASCADE
                                        ON DELETE SET DEFAULT
);