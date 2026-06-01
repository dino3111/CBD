CREATE KEYSPACE lol_db
WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

USE lol_db;

-- Tabela 1
CREATE TABLE players (
    summoner_name   TEXT PRIMARY KEY,
    real_name       TEXT,
    region          TEXT,
    level           INT,
    rank            TEXT,
    lp              INT,
    wins            INT,
    losses          INT,
    most_played     LIST<TEXT>,
    badges          SET<TEXT>,
    preferences     MAP<TEXT, TEXT>
);

-- Tabela 2
CREATE TABLE champions (
    champion_id     INT PRIMARY KEY,
    name            TEXT,
    title           TEXT,
    role            TEXT,
    difficulty      TEXT,
    base_hp         INT,
    base_armor      INT,
    win_rate        DOUBLE,
    pick_rate       DOUBLE,
    abilities       LIST<TEXT>,
    counters        SET<TEXT>,
    stats           MAP<TEXT, DOUBLE> 
);

-- Tabela 3
CREATE TABLE matches (
    match_id        UUID PRIMARY KEY,
    date_played     TIMESTAMP,
    duration_min    INT,
    game_mode       TEXT,
    winning_team    INT,
    patch           TEXT,
    players_blue    LIST<TEXT>,
    players_red     LIST<TEXT>,
    objectives      MAP<TEXT, INT>
);

-- Tabela 4
CREATE TABLE player_champion_stats (
    summoner_name   TEXT,
    champion_name   TEXT,
    games_played    INT,
    wins            INT,
    losses          INT,
    avg_kda         DOUBLE,
    avg_cs_min      DOUBLE,
    avg_damage      INT,
    mastery_level   INT,
    mastery_points  INT,
    runes_used      SET<TEXT>,
    items_preferred LIST<TEXT>,
    role_played     MAP<TEXT, INT>,
    PRIMARY KEY (summoner_name, champion_name)
);