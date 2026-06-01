-- players:

INSERT INTO players (summoner_name, real_name, region, level, rank, lp, wins, losses, most_played, badges, preferences)
VALUES ('Faker', 'Lee Sang-hyeok', 'KR', 500, 'Challenger', 1420, 312, 201,
    ['Orianna', 'Zed', 'LeBlanc', 'Ryze'],
    {'World Champion', 'LCK Legend', 'Mid God'},
    {'main_lane': 'Mid', 'play_style': 'Mechanical', 'region_pref': 'Solo Queue'});

INSERT INTO players (summoner_name, real_name, region, level, rank, lp, wins, losses, most_played, badges, preferences)
VALUES ('Caps', 'Rasmus Winther', 'EUW', 480, 'Challenger', 980, 289, 210,
    ['Sylas', 'Galio', 'Cassiopeia'],
    {'Worlds Finalist', 'MSI Champion'},
    {'main_lane': 'Mid', 'play_style': 'Teamfight', 'region_pref': 'Ranked'});

INSERT INTO players (summoner_name, real_name, region, level, rank, lp, wins, losses, most_played, badges, preferences)
VALUES ('Uzi', 'Jian Zi-Hao', 'CN', 495, 'Challenger', 1105, 341, 230,
    ['Vayne', 'Kai''Sa', 'Ezreal'],
    {'ADC God', 'MSI Champion', 'LPL Legend'},
    {'main_lane': 'Bot', 'play_style': 'Carry', 'region_pref': 'Ranked'});

INSERT INTO players (summoner_name, real_name, region, level, rank, lp, wins, losses, most_played, badges, preferences)
VALUES ('ShowMaker', 'Heo Su', 'KR', 460, 'Grandmaster', 785, 267, 198,
    ['Zoe', 'Akali', 'Twisted Fate'],
    {'Worlds Champion', 'DK Core'},
    {'main_lane': 'Mid', 'play_style': 'Carry', 'region_pref': 'Solo Queue'});

INSERT INTO players (summoner_name, real_name, region, level, rank, lp, wins, losses, most_played, badges, preferences)
VALUES ('Rekkles', 'Martin Larsson', 'EUW', 440, 'Master', 512, 245, 190,
    ['Jhin', 'Sivir', 'Caitlyn'],
    {'EU Legend', 'LEC Champion'},
    {'main_lane': 'Bot', 'play_style': 'Safe', 'region_pref': 'Flex'});

INSERT INTO players (summoner_name, real_name, region, level, rank, lp, wins, losses, most_played, badges, preferences)
VALUES ('TheShy', 'Kang Seung-lok', 'CN', 475, 'Challenger', 1230, 298, 215,
    ['Fiora', 'Irelia', 'Camille'],
    {'IG World Champion', 'Top God'},
    {'main_lane': 'Top', 'play_style': 'Aggressive', 'region_pref': 'Solo Queue'});

INSERT INTO players (summoner_name, real_name, region, level, rank, lp, wins, losses, most_played, badges, preferences)
VALUES ('Ruler', 'Park Jae-hyuk', 'KR', 455, 'Challenger', 890, 276, 204,
    ['Jinx', 'Aphelios', 'Varus'],
    {'Worlds Champion', 'T1 ADC'},
    {'main_lane': 'Bot', 'play_style': 'Consistent', 'region_pref': 'Ranked'});

INSERT INTO players (summoner_name, real_name, region, level, rank, lp, wins, losses, most_played, badges, preferences)
VALUES ('Chovy', 'Jeong Ji-hoon', 'KR', 450, 'Challenger', 1050, 301, 208,
    ['Azir', 'Viktor', 'Taliyah'],
    {'CS Machine', 'GEN Legend'},
    {'main_lane': 'Mid', 'play_style': 'CS-Oriented', 'region_pref': 'Solo Queue'});

INSERT INTO players (summoner_name, real_name, region, level, rank, lp, wins, losses, most_played, badges, preferences)
VALUES ('Keria', 'Ryu Min-seok', 'KR', 445, 'Grandmaster', 720, 252, 188,
    ['Thresh', 'Nautilus', 'Blitzcrank'],
    {'Worlds Champion', 'Best Support'},
    {'main_lane': 'Support', 'play_style': 'Engage', 'region_pref': 'Ranked'});

INSERT INTO players (summoner_name, real_name, region, level, rank, lp, wins, losses, most_played, badges, preferences)
VALUES ('Oner', 'Moon Hyeon-joon', 'KR', 435, 'Challenger', 810, 258, 192,
    ['Vi', 'Lee Sin', 'Viego'],
    {'Worlds Champion', 'Jungle MVP'},
    {'main_lane': 'Jungle', 'play_style': 'Aggressive', 'region_pref': 'Solo Queue'});

INSERT INTO players (summoner_name, real_name, region, level, rank, lp, wins, losses, most_played, badges, preferences)
VALUES ('Zeus', 'Choi Woo-je', 'KR', 430, 'Challenger', 875, 263, 195,
    ['Garen', 'Jayce', 'Aatrox'],
    {'Worlds Champion', 'Top Prodigy'},
    {'main_lane': 'Top', 'play_style': 'Splitpush', 'region_pref': 'Ranked'});

INSERT INTO players (summoner_name, real_name, region, level, rank, lp, wins, losses, most_played, badges, preferences)
VALUES ('Impact', 'Jeong Eon-young', 'NA', 420, 'Master', 445, 230, 178,
    ['Gnar', 'Renekton', 'Kennen'],
    {'SKT World Champion', 'NA Vet'},
    {'main_lane': 'Top', 'play_style': 'Tank', 'region_pref': 'Flex'});

-- champions:

INSERT INTO champions (champion_id, name, title, role, difficulty, base_hp, base_armor,
    win_rate, pick_rate, abilities, counters, stats)
VALUES (1, 'Ahri', 'the Nine-Tailed Fox', 'Mage', 'Moderate', 526, 21,
    52.3, 8.7,
    ['Essence Theft', 'Orb of Deception', 'Fox-Fire', 'Charm', 'Spirit Rush'],
    {'Syndra', 'Irelia', 'Fizz'},
    {'damage': 8.5, 'mobility': 9.0, 'cc': 6.0, 'survivability': 5.5});
INSERT INTO champions (champion_id, name, title, role, difficulty, base_hp, base_armor,
    win_rate, pick_rate, abilities, counters, stats)
VALUES (2, 'Zed', 'the Master of Shadows', 'Assassin', 'Hard', 584, 32,
    49.8, 9.2,
    ['Contempt for the Weak', 'Razor Shuriken', 'Living Shadow', 'Shadow Slash', 'Death Mark'],
    {'Malzahar', 'Lissandra', 'Kayle'},
    {'damage': 9.5, 'mobility': 8.5, 'cc': 2.0, 'survivability': 4.5});
INSERT INTO champions (champion_id, name, title, role, difficulty, base_hp, base_armor,
    win_rate, pick_rate, abilities, counters, stats)
VALUES (3, 'Thresh', 'the Chain Warden', 'Support', 'Hard', 561, 16,
    51.1, 11.4,
    ['Damnation', 'Death Sentence', 'Dark Passage', 'Flay', 'The Box'],
    {'Nautilus', 'Blitzcrank', 'Leona'},
    {'damage': 6.0, 'mobility': 5.0, 'cc': 9.5, 'survivability': 7.0});
INSERT INTO champions (champion_id, name, title, role, difficulty, base_hp, base_armor,
    win_rate, pick_rate, abilities, counters, stats)
VALUES (4, 'Jinx', 'the Loose Cannon', 'Marksman', 'Moderate', 575, 26,
    53.2, 13.1,
    ['Excited!', 'Switcheroo!', 'Zap!', 'Flame Chompers!', 'Super Mega Death Rocket!'],
    {'Draven', 'Miss Fortune', 'Caitlyn'},
    {'damage': 9.0, 'mobility': 4.0, 'cc': 5.0, 'survivability': 4.0});
INSERT INTO champions (champion_id, name, title, role, difficulty, base_hp, base_armor,
    win_rate, pick_rate, abilities, counters, stats)
VALUES (5, 'Lee Sin', 'the Blind Monk', 'Fighter', 'Very Hard', 570, 34,
    47.5, 10.8,
    ['Flurry', 'Sonic Wave / Resonating Strike', 'Safeguard / Iron Will', 'Tempest / Cripple', 'Dragon''s Rage'],
    {'Sejuani', 'Rammus', 'Amumu'},
    {'damage': 8.0, 'mobility': 9.5, 'cc': 6.0, 'survivability': 6.0});
INSERT INTO champions (champion_id, name, title, role, difficulty, base_hp, base_armor,
    win_rate, pick_rate, abilities, counters, stats)
VALUES (6, 'Lux', 'the Lady of Luminosity', 'Mage', 'Easy', 510, 19,
    54.1, 14.3,
    ['Illumination', 'Light Binding', 'Prismatic Barrier', 'Lucent Singularity', 'Final Spark'],
    {'Zed', 'Talon', 'Kassadin'},
    {'damage': 8.5, 'mobility': 3.0, 'cc': 7.5, 'survivability': 4.5});

INSERT INTO champions (champion_id, name, title, role, difficulty, base_hp, base_armor,
    win_rate, pick_rate, abilities, counters, stats)
VALUES (7, 'Yasuo', 'the Unforgiven', 'Fighter', 'Very Hard', 523, 30,
    48.9, 12.7,
    ['Way of the Wanderer', 'Steel Tempest', 'Wind Wall', 'Sweeping Blade', 'Last Breath'],
    {'Malphite', 'Renekton', 'Pantheon'},
    {'damage': 9.0, 'mobility': 8.0, 'cc': 4.5, 'survivability': 5.5});

INSERT INTO champions (champion_id, name, title, role, difficulty, base_hp, base_armor,
    win_rate, pick_rate, abilities, counters, stats)
VALUES (8, 'Blitzcrank', 'the Great Steam Golem', 'Tank', 'Easy', 617, 34,
    52.8, 9.6,
    ['Mana Barrier', 'Rocket Grab', 'Overdrive', 'Power Fist', 'Static Field'],
    {'Thresh', 'Morgana', 'Nautilus'},
    {'damage': 6.0, 'mobility': 6.5, 'cc': 9.0, 'survivability': 8.0});
INSERT INTO champions (champion_id, name, title, role, difficulty, base_hp, base_armor,
    win_rate, pick_rate, abilities, counters, stats)
VALUES (9, 'Vayne', 'the Night Hunter', 'Marksman', 'Hard', 550, 28,
    51.4, 7.9,
    ['Night Hunter', 'Tumble', 'Silver Bolts', 'Condemn', 'Final Hour'],
    {'Caitlyn', 'Draven', 'Ashe'},
    {'damage': 9.5, 'mobility': 7.5, 'cc': 3.0, 'survivability': 3.5});
INSERT INTO champions (champion_id, name, title, role, difficulty, base_hp, base_armor,
    win_rate, pick_rate, abilities, counters, stats)
VALUES (10, 'Nami', 'the Tidecaller', 'Support', 'Moderate', 474, 20,
    53.7, 10.2,
    ['Surging Tides', 'Aqua Prison', 'Ebb and Flow', 'Tidecaller''s Blessing', 'Tidal Wave'],
    {'Blitzcrank', 'Leona', 'Thresh'},
    {'damage': 5.5, 'mobility': 4.5, 'cc': 7.5, 'survivability': 5.0});
INSERT INTO champions (champion_id, name, title, role, difficulty, base_hp, base_armor,
    win_rate, pick_rate, abilities, counters, stats)
VALUES (11, 'Fiora', 'the Grand Duelist', 'Fighter', 'Hard', 560, 33,
    50.6, 6.8,
    ['Duelist''s Dance', 'Lunge', 'Riposte', 'Bladework', 'Grand Challenge'],
    {'Malphite', 'Teemo', 'Garen'},
    {'damage': 9.0, 'mobility': 8.5, 'cc': 4.0, 'survivability': 6.5});
INSERT INTO champions (champion_id, name, title, role, difficulty, base_hp, base_armor,
    win_rate, pick_rate, abilities, counters, stats)
VALUES (12, 'Orianna', 'the Lady of Clockwork', 'Mage', 'Hard', 480, 19,
    51.9, 7.4,
    ['Clockwork Windup', 'Command: Attack', 'Command: Dissonance', 'Command: Protect', 'Command: Shockwave'],
    {'Zed', 'Talon', 'LeBlanc'},
    {'damage': 8.0, 'mobility': 3.5, 'cc': 8.5, 'survivability': 5.0});

-- matches:

INSERT INTO matches (match_id, date_played, duration_min, game_mode, winning_team, patch,
    players_blue, players_red, objectives)
VALUES (uuid(), '2025-01-15 14:30:00+0000', 32, 'Ranked', 1, '14.1',
    ['Faker', 'Oner', 'Zeus', 'Ruler', 'Keria'],
    ['ShowMaker', 'Caps', 'TheShy', 'Rekkles', 'Uzi'],
    {'dragon': 3, 'baron': 1, 'herald': 2, 'tower': 9, 'inhibitor': 2});
    
INSERT INTO matches (match_id, date_played, duration_min, game_mode, winning_team, patch,
    players_blue, players_red, objectives)
VALUES (uuid(), '2025-01-15 16:00:00+0000', 28, 'Ranked', 2, '14.1',
    ['Chovy', 'Impact', 'Rekkles', 'Keria', 'Oner'],
    ['Faker', 'TheShy', 'Uzi', 'ShowMaker', 'Zeus'],
    {'dragon': 1, 'baron': 0, 'herald': 1, 'tower': 4, 'inhibitor': 0});
INSERT INTO matches (match_id, date_played, duration_min, game_mode, winning_team, patch,
    players_blue, players_red, objectives)
VALUES (uuid(), '2025-01-16 10:15:00+0000', 41, 'Ranked', 1, '14.1',
    ['Zeus', 'Oner', 'Faker', 'Ruler', 'Keria'],
    ['TheShy', 'Chovy', 'Rekkles', 'Caps', 'Impact'],
    {'dragon': 4, 'baron': 2, 'herald': 2, 'tower': 11, 'inhibitor': 3});
INSERT INTO matches (match_id, date_played, duration_min, game_mode, winning_team, patch,
    players_blue, players_red, objectives)
VALUES (uuid(), '2025-01-17 20:45:00+0000', 25, 'Normal', 2, '14.2',
    ['Rekkles', 'Impact', 'Caps', 'Uzi', 'Ruler'],
    ['Keria', 'Oner', 'Chovy', 'Faker', 'ShowMaker'],
    {'dragon': 2, 'baron': 1, 'herald': 1, 'tower': 7, 'inhibitor': 1});
INSERT INTO matches (match_id, date_played, duration_min, game_mode, winning_team, patch,
    players_blue, players_red, objectives)
VALUES (uuid(), '2025-01-18 13:00:00+0000', 35, 'Ranked', 1, '14.2',
    ['ShowMaker', 'Caps', 'TheShy', 'Uzi', 'Impact'],
    ['Zeus', 'Oner', 'Faker', 'Ruler', 'Chovy'],
    {'dragon': 3, 'baron': 1, 'herald': 2, 'tower': 8, 'inhibitor': 2});
INSERT INTO matches (match_id, date_played, duration_min, game_mode, winning_team, patch,
    players_blue, players_red, objectives)
VALUES (uuid(), '2025-01-19 17:30:00+0000', 22, 'Ranked', 2, '14.2',
    ['Faker', 'Keria', 'Zeus', 'Oner', 'Ruler'],
    ['Chovy', 'TheShy', 'ShowMaker', 'Caps', 'Rekkles'],
    {'dragon': 0, 'baron': 0, 'herald': 1, 'tower': 3, 'inhibitor': 0});
INSERT INTO matches (match_id, date_played, duration_min, game_mode, winning_team, patch,
    players_blue, players_red, objectives)
VALUES (uuid(), '2025-01-20 21:00:00+0000', 38, 'Ranked', 1, '14.3',
    ['Uzi', 'TheShy', 'ShowMaker', 'Rekkles', 'Impact'],
    ['Keria', 'Ruler', 'Faker', 'Zeus', 'Oner'],
    {'dragon': 4, 'baron': 2, 'herald': 2, 'tower': 10, 'inhibitor': 2});
INSERT INTO matches (match_id, date_played, duration_min, game_mode, winning_team, patch,
    players_blue, players_red, objectives)
VALUES (uuid(), '2025-01-21 11:20:00+0000', 29, 'Normal', 1, '14.3',
    ['Caps', 'Impact', 'Rekkles', 'Chovy', 'Keria'],
    ['Uzi', 'TheShy', 'Oner', 'Zeus', 'ShowMaker'],
    {'dragon': 2, 'baron': 1, 'herald': 1, 'tower': 7, 'inhibitor': 1});
INSERT INTO matches (match_id, date_played, duration_min, game_mode, winning_team, patch,
    players_blue, players_red, objectives)
VALUES (uuid(), '2025-01-22 15:45:00+0000', 45, 'Ranked', 2, '14.3',
    ['ShowMaker', 'Ruler', 'Chovy', 'Impact', 'TheShy'],
    ['Faker', 'Keria', 'Zeus', 'Oner', 'Caps'],
    {'dragon': 3, 'baron': 2, 'herald': 2, 'tower': 9, 'inhibitor': 2});
INSERT INTO matches (match_id, date_played, duration_min, game_mode, winning_team, patch,
    players_blue, players_red, objectives)
VALUES (uuid(), '2025-01-23 09:00:00+0000', 31, 'Ranked', 1, '14.3',
    ['Zeus', 'Faker', 'Oner', 'Ruler', 'Keria'],
    ['Caps', 'Rekkles', 'Impact', 'Uzi', 'Chovy'],
    {'dragon': 3, 'baron': 1, 'herald': 2, 'tower': 8, 'inhibitor': 1});
INSERT INTO matches (match_id, date_played, duration_min, game_mode, winning_team, patch,
    players_blue, players_red, objectives)
VALUES (uuid(), '2025-01-24 19:15:00+0000', 27, 'Ranked', 2, '14.4',
    ['Chovy', 'ShowMaker', 'Caps', 'Impact', 'Keria'],
    ['Zeus', 'TheShy', 'Uzi', 'Faker', 'Oner'],
    {'dragon': 1, 'baron': 0, 'herald': 1, 'tower': 5, 'inhibitor': 0});
INSERT INTO matches (match_id, date_played, duration_min, game_mode, winning_team, patch,
    players_blue, players_red, objectives)
VALUES (uuid(), '2025-01-25 22:00:00+0000', 36, 'ARAM', 1, '14.4',
    ['Faker', 'Caps', 'Rekkles', 'Keria', 'Impact'],
    ['Uzi', 'TheShy', 'Oner', 'Ruler', 'Chovy'],
    {'tower': 7, 'inhibitor': 2, 'dragon': 0, 'baron': 0, 'herald': 0});

-- player_champion_stats:

INSERT INTO player_champion_stats (summoner_name, champion_name, games_played, wins, losses,
    avg_kda, avg_cs_min, avg_damage, mastery_level, mastery_points,
    runes_used, items_preferred, role_played)
VALUES ('Faker', 'Orianna', 210, 128, 82, 5.8, 8.2, 25400, 7, 1450000,
    {'Arcane Comet', 'Manaflow Band', 'Transcendence', 'Scorch', 'Presence of Mind', 'Last Stand'},
    ['Luden''s Tempest', 'Shadowflame', 'Rabadon''s Deathcap', 'Zhonya''s Hourglass', 'Void Staff'],
    {'Mid': 210});

INSERT INTO player_champion_stats (summoner_name, champion_name, games_played, wins, losses,
    avg_kda, avg_cs_min, avg_damage, mastery_level, mastery_points,
    runes_used, items_preferred, role_played)
VALUES ('Faker', 'Zed', 185, 105, 80, 4.9, 8.8, 28100, 7, 1120000,
    {'Electrocute', 'Sudden Impact', 'Eyeball Collection', 'Relentless Hunter', 'Coup de Grace', 'Legend: Tenacity'},
    ['Duskblade of Draktharr', 'Serpent''s Fang', 'Edge of Night', 'Guardian Angel'],
    {'Mid': 185});

INSERT INTO player_champion_stats (summoner_name, champion_name, games_played, wins, losses,
    avg_kda, avg_cs_min, avg_damage, mastery_level, mastery_points,
    runes_used, items_preferred, role_played)
VALUES ('Uzi', 'Vayne', 245, 142, 103, 6.2, 9.1, 32100, 7, 1820000,
    {'Lethal Tempo', 'Presence of Mind', 'Legend: Bloodline', 'Cut Down', 'Taste of Blood', 'Ravenous Hunter'},
    ['Kraken Slayer', 'Guinsoo''s Rageblade', 'Blade of the Ruined King', 'Wit''s End', 'Rabadon''s Deathcap'],
    {'Bot': 240, 'Mid': 5});

INSERT INTO player_champion_stats (summoner_name, champion_name, games_played, wins, losses,
    avg_kda, avg_cs_min, avg_damage, mastery_level, mastery_points,
    runes_used, items_preferred, role_played)
VALUES ('Caps', 'Sylas', 195, 112, 83, 5.1, 8.5, 27300, 7, 1300000,
    {'Conqueror', 'Presence of Mind', 'Legend: Tenacity', 'Last Stand', 'Bone Plating', 'Overgrowth'},
    ['Hextech Rocketbelt', 'Zhonya''s Hourglass', 'Shadowflame', 'Rabadon''s Deathcap', 'Mejai''s Soulstealer'],
    {'Mid': 195});

INSERT INTO player_champion_stats (summoner_name, champion_name, games_played, wins, losses,
    avg_kda, avg_cs_min, avg_damage, mastery_level, mastery_points,
    runes_used, items_preferred, role_played)
VALUES ('TheShy', 'Fiora', 220, 135, 85, 7.1, 9.4, 29800, 7, 1680000,
    {'Conqueror', 'Triumph', 'Legend: Alacrity', 'Last Stand', 'Second Wind', 'Unflinching'},
    ['Trinity Force', 'Ravenous Hydra', 'Death''s Dance', 'Sterak''s Gage', 'Guardian Angel'],
    {'Top': 218, 'Mid': 2});

INSERT INTO player_champion_stats (summoner_name, champion_name, games_played, wins, losses,
    avg_kda, avg_cs_min, avg_damage, mastery_level, mastery_points,
    runes_used, items_preferred, role_played)
VALUES ('Keria', 'Thresh', 198, 118, 80, 4.2, 1.8, 9200, 7, 1540000,
    {'Aftershock', 'Font of Life', 'Bone Plating', 'Unflinching', 'Zombie Ward', 'Ghost Poro'},
    ['Locket of the Iron Solari', 'Knight''s Vow', 'Shurelya''s Battlesong', 'Mikael''s Blessing'],
    {'Support': 198});

INSERT INTO player_champion_stats (summoner_name, champion_name, games_played, wins, losses,
    avg_kda, avg_cs_min, avg_damage, mastery_level, mastery_points,
    runes_used, items_preferred, role_played)
VALUES ('ShowMaker', 'Zoe', 168, 98, 70, 5.5, 8.0, 26700, 7, 980000,
    {'Arcane Comet', 'Manaflow Band', 'Transcendence', 'Gathering Storm', 'Presence of Mind', 'Coup de Grace'},
    ['Luden''s Tempest', 'Shadowflame', 'Horizon Focus', 'Rabadon''s Deathcap', 'Void Staff'],
    {'Mid': 168});

INSERT INTO player_champion_stats (summoner_name, champion_name, games_played, wins, losses,
    avg_kda, avg_cs_min, avg_damage, mastery_level, mastery_points,
    runes_used, items_preferred, role_played)
VALUES ('Chovy', 'Azir', 175, 102, 73, 5.4, 9.6, 28900, 7, 1050000,
    {'Conqueror', 'Presence of Mind', 'Legend: Alacrity', 'Last Stand', 'Taste of Blood', 'Ravenous Hunter'},
    ['Luden''s Tempest', 'Shadowflame', 'Rabadon''s Deathcap', 'Void Staff', 'Zhonya''s Hourglass'],
    {'Mid': 175});

INSERT INTO player_champion_stats (summoner_name, champion_name, games_played, wins, losses,
    avg_kda, avg_cs_min, avg_damage, mastery_level, mastery_points,
    runes_used, items_preferred, role_played)
VALUES ('Oner', 'Lee Sin', 203, 115, 88, 4.8, 5.5, 21400, 7, 1380000,
    {'Conqueror', 'Triumph', 'Legend: Alacrity', 'Last Stand', 'Sudden Impact', 'Eyeball Collection'},
    ['Trinity Force', 'Black Cleaver', 'Death''s Dance', 'Sterak''s Gage', 'Guardian Angel'],
    {'Jungle': 203});

INSERT INTO player_champion_stats (summoner_name, champion_name, games_played, wins, losses,
    avg_kda, avg_cs_min, avg_damage, mastery_level, mastery_points,
    runes_used, items_preferred, role_played)
VALUES ('Rekkles', 'Jhin', 188, 108, 80, 5.0, 8.7, 24100, 7, 1190000,
    {'Fleet Footwork', 'Presence of Mind', 'Legend: Bloodline', 'Coup de Grace', 'Taste of Blood', 'Ravenous Hunter'},
    ['Galeforce', 'The Collector', 'Infinity Edge', 'Rapid Firecannon', 'Mortal Reminder'],
    {'Bot': 185, 'Mid': 3});

INSERT INTO player_champion_stats (summoner_name, champion_name, games_played, wins, losses,
    avg_kda, avg_cs_min, avg_damage, mastery_level, mastery_points,
    runes_used, items_preferred, role_played)
VALUES ('Ruler', 'Jinx', 192, 110, 82, 5.6, 8.9, 31200, 7, 1260000,
    {'Lethal Tempo', 'Presence of Mind', 'Legend: Bloodline', 'Cut Down', 'Taste of Blood', 'Ravenous Hunter'},
    ['Kraken Slayer', 'Runaan''s Hurricane', 'Infinity Edge', 'Rabadon''s Deathcap', 'Lord Dominik''s Regards'],
    {'Bot': 192});

INSERT INTO player_champion_stats (summoner_name, champion_name, games_played, wins, losses,
    avg_kda, avg_cs_min, avg_damage, mastery_level, mastery_points,
    runes_used, items_preferred, role_played)
VALUES ('Zeus', 'Garen', 155, 89, 66, 4.1, 8.1, 22600, 6, 720000,
    {'Conqueror', 'Triumph', 'Legend: Tenacity', 'Last Stand', 'Second Wind', 'Unflinching'},
    ['Stridebreaker', 'Mortal Reminder', 'Dead Man''s Plate', 'Gargoyle Stoneplate', 'Sterak''s Gage'],
    {'Top': 150, 'Mid': 5});