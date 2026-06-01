-- Query 1: Jogadores com rank Challenger
SELECT summoner_name, rank, lp, wins, losses
FROM players
WHERE rank = 'Challenger'

-- Query 2: Top 5 champions com maior win_rate
SELECT name, role, win_rate, pick_rate
FROM champions
LIMIT 5;

-- Query 3: Estatísticas do Faker com os seus champions
SELECT summoner_name, champion_name, games_played, wins, avg_kda, mastery_level
FROM player_champion_stats
WHERE summoner_name = 'Faker'

-- Query 4: Partidas com duração superior a 35 minutos
SELECT match_id, date_played, duration_min, game_mode, patch
FROM matches
WHERE duration_min > 35
ALLOW FILTERING;

-- Query 5: Campeões Support com as suas stats
SELECT name, title, win_rate, pick_rate, difficulty
FROM champions
WHERE role = 'Support'
ALLOW FILTERING;

-- Query 6: Jogadores da Koreia com os seus ranks e LPs
SELECT summoner_name, rank, lp, level
FROM players
WHERE region = 'KR'
ALLOW FILTERING;

-- Query 7: Win rate de Faker usando a UDF
SELECT summoner_name, wins, losses, lol_db.calc_winrate(wins, losses) AS winrate_pct
FROM players
WHERE summoner_name = 'Faker';

-- Query 8: Comparar média de LP entre ranks com a UDA
SELECT lol_db.avg_lp(lp) AS media_lp
FROM players
WHERE rank = 'Master'

SELECT lol_db.avg_lp(lp) AS media_lp
FROM players
WHERE rank = 'Iron'

-- Query 9: Estatísticas dos jogadores ordenados por mastery_points
SELECT summoner_name, champion_name, mastery_points, mastery_level, avg_kda
FROM player_champion_stats
WHERE summoner_name = 'Uzi'
ORDER BY champion_name ASC;

-- Query 10: Partidas do modo Ranked
SELECT match_id, date_played, duration_min, winning_team, patch
FROM matches
WHERE game_mode = 'Ranked'
ALLOW FILTERING;
