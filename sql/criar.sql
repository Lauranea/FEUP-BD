PRAGMA foreign_keys = ON;




--ON DELETE SET NULL / ON UPDATE SET NULL: places the NULL value in the foreign key
--of tuples that reference the removed/changed tuple.
--ON DELETE SET DEFAULT / ON UPDATE SET DEFAULT: places the default value in the
--foreign key of tuples that refer to the removed/changed tuple.
--ON DELETE CASCADE: removes all tuples that reference the removed tuple.
--ON UPDATE CASCADE: updates the foreign key of the tuples that refer to the changed
--tuple with the new value.


--Table Estadio
CREATE TABLE Estadio
(
    idEstadio           INTEGER(100)    PRIMARY KEY
                                        DEFAULT 0,
    local1              VARCHAR(50)     CONSTRAINT Estadio_local1_nn NOT NULL,

    nome                VARCHAR(50)     CONSTRAINT Estadio_nome_nn NOT NULL,
    
    UNIQUE (nome)
    
    --UNIQUE (LOCAL1)
);

--Table Jogo
CREATE TABLE Jogo
(
    idJogo              INTEGER         PRIMARY KEY
                                        DEFAULT 0,

    data1               DATE            CONSTRAINT Jogo_data1_nn NOT NULL,

    hora_inicio         TIME            CONSTRAINT Jogo_hora_inicio_nn NOT NULL,
    hora_fim            TIME            CONSTRAINT Jogo_hora_fim_nn NOT NULL
                                        CONSTRAINT Jogo_hora_fim_maior_hora_inicio CHECK (hora_fim > hora_inicio),

    estadio             INTEGER         DEFAULT 0
        	                            CONSTRAINT fk_estadio_idEstadio REFERENCES idEstadio(Estadio)
                                        ON UPDATE CASCADE
                                        ON DELETE SET DEFAULT

    --UNIQUE (data1, hora_inicio, hora_fim)
);

--Table Jogo de fase de eliminação
CREATE TABLE Jogo_elem
(
    idJogo_fase_elem    INTEGER         PRIMARY KEY
                                        DEFAULT 0
                                        CONSTRAINT fk_Jogo_fase_elem_idJogo REFERENCES idJogo(Jogo)
                                        ON UPDATE CASCADE
                                        ON DELETE SET DEFAULT,

    fase VARCHAR(50)                    CONSTRAINT Jogo_elem_fase_nn NOT NULL
);

--Table Jogo de fase de grupos
CREATE TABLE Jogo_grupo
(
    idJogo_fase_grupo   INTEGER         PRIMARY KEY
                                        DEFAULT 0
                                        CONSTRAINT fk_idJogo_fase_grupo_idJogo REFERENCES idJogo(Jogo) 
                                        ON UPDATE CASCADE
                                        ON DELETE SET DEFAULT,

    jornada VARCHAR(50)                 CONSTRAINT Jogo_grupo_jornada_nn NOT NULL
);

--Table Grupos
CREATE TABLE Grupos
(
    idGrupo             INTEGER         PRIMARY KEY
                                        DEFAULT 0,
    idJogo_fase_grupo   INTEGER         DEFAULT 0
                                        CONSTRAINT fk_idJogo_fase_grupo_idJogo_fase_grupo REFERENCES idJogo_fase_grupo(Jogo_grupo)
                                        ON UPDATE CASCADE
                                        ON DELETE SET DEFAULT,
    pontos              INTEGER         CONSTRAINT Grupos_pontos_nn NOT NULL,

    lugar               VARCHAR(4)      CONSTRAINT Grupos_lugar_nn NOT NULL,
    nome                VARCHAR(50)     CONSTRAINT Grupos_nome_nn NOT NULL,

    UNIQUE (nome)
);

--Table Equipa
CREATE TABLE Equipa
(
    idEquipa            INTEGER         PRIMARY KEY
                                        DEFAULT 0,
    idGrupo             INTEGER         DEFAULT 0
                                        CONSTRAINT fk_idGrupo_idGrupo REFERENCES idGrupo(Grupos)
                                        ON UPDATE CASCADE
                                        ON DELETE SET DEFAULT,

    pais                VARCHAR(50)     CONSTRAINT Equipa_pais_nn NOT NULL,
    continente          VARCHAR(50)     CONSTRAINT EQUIPA_continente_nn NOT NULL,

    sigla               CHAR(3)         CONSTRAINT Equipa_sigla_nn NOT NULL,

    UNIQUE (pais, sigla)
);

--Table Jogador
CREATE TABLE Jogador
(
    idJogador           INTEGER         PRIMARY KEY
                                        DEFAULT 0,
    idEquipa            INTEGER         DEFAULT 0
                                        CONSTRAINT fk_idEquipa_idEquipa REFERENCES idEquipa(Equipa)
                                        ON UPDATE CASCADE
                                        ON DELETE SET DEFAULT,
    numero              INTEGER(99,1)   CONSTRAINT Jogador_numero_nn NOT NULL
                                        CONSTRAINT Jogador_numero_1_99 CHECK (numero >= 1 AND numero <= 99),

    altura              FLOAT           CONSTRAINT Jogador_altura_nn NOT NULL,
    peso                FLOAT           CONSTRAINT Jogador_peso_nn NOT NULL,
    
    nome                VARCHAR(50)     CONSTRAINT Jogador_nome_nn NOT NULL,

    data_nascimento     DATE            CONSTRAINT Jogador_data_nascimento_nn NOT NULL
);

--Table Evento
CREATE TABLE Evento
(
    idEvento            INTEGER         PRIMARY KEY
                                        DEFAULT 0,
    minuto              INTEGER(60)
);

--Table Golo
CREATE TABLE Golo
(
    idGolo              INTEGER         PRIMARY KEY
                                        DEFAULT 0
                                        CONSTRAINT fk_idGolo_idEvento REFERENCES idEvento(Evento)
                                        ON UPDATE CASCADE
                                        ON DELETE SET DEFAULT,
    idSofre             INTEGER         DEFAULT 0
                                        CONSTRAINT fk_idSofre_idEquipa REFERENCES idEquipa(Equipa) 
                                        ON UPDATE CASCADE
                                        ON DELETE SET DEFAULT,
    idMarca             INTEGER         DEFAULT 0
                                        CONSTRAINT fk_idMarca_idEquipa REFERENCES idEquipa(Equipa)  
                                        ON UPDATE CASCADE
                                        ON DELETE SET DEFAULT,
    idJogador           INTEGER         DEFAULT 0
                                        CONSTRAINT fk_idJogador_idJogador REFERENCES idJogador(Jogador) 
                                        ON UPDATE CASCADE
                                        ON DELETE SET DEFAULT
);