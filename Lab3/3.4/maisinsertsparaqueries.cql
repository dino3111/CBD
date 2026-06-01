INSERT INTO players (summoner_name, real_name, region, level, rank, lp, wins, losses,
    most_played, badges, preferences)
VALUES ('IronClimber', 'João Silva', 'EUW', 45, 'Iron', 12, 23, 67,
    ['Garen', 'Ashe'],
    {'First Steps'},
    {'main_lane': 'Top', 'play_style': 'Learning'});

INSERT INTO players (summoner_name, real_name, region, level, rank, lp, wins, losses,
    most_played, badges, preferences)
VALUES ('BronzeWarrior', 'Miguel Costa', 'EUW', 78, 'Bronze', 45, 41, 89,
    ['Lux', 'Jinx'],
    {'Survivor'},
    {'main_lane': 'Mid', 'play_style': 'Aggressive'});

INSERT INTO players (summoner_name, real_name, region, level, rank, lp, wins, losses,
    most_played, badges, preferences)
VALUES ('SilverDream', 'Ana Ferreira', 'PT', 112, 'Silver', 78, 89, 95,
    ['Ahri', 'Nami'],
    {'Consistent'},
    {'main_lane': 'Support', 'play_style': 'Safe'});

INSERT INTO players (summoner_name, real_name, region, level, rank, lp, wins, losses,
    most_played, badges, preferences)
VALUES ('GoldRush99', 'Pedro Santos', 'PT', 156, 'Gold', 55, 134, 121,
    ['Yasuo', 'Zed'],
    {'Flashy Plays'},
    {'main_lane': 'Mid', 'play_style': 'Mechanical'});

INSERT INTO player_champion_stats (summoner_name, champion_name, games_played, wins, losses,
    avg_kda, avg_cs_min, avg_damage, mastery_level, mastery_points,
    runes_used, items_preferred, role_played)
VALUES ('Uzi', 'Kai''Sa', 198, 115, 83, 5.8, 9.3, 30400, 7, 1620000,
    {'Lethal Tempo', 'Presence of Mind', 'Legend: Bloodline', 'Cut Down'},
    ['Kraken Slayer', 'Guinsoo''s Rageblade', 'Infinity Edge', 'Rabadon''s Deathcap'],
    {'Bot': 198});

INSERT INTO player_champion_stats (summoner_name, champion_name, games_played, wins, losses,
    avg_kda, avg_cs_min, avg_damage, mastery_level, mastery_points,
    runes_used, items_preferred, role_played)
VALUES ('Uzi', 'Ezreal', 167, 94, 73, 5.1, 8.8, 27600, 7, 980000,
    {'Fleet Footwork', 'Presence of Mind', 'Legend: Bloodline', 'Coup de Grace'},
    ['Trinity Force', 'Essence Reaver', 'Infinity Edge', 'Rabadon''s Deathcap'],
    {'Bot': 162, 'Mid': 5});