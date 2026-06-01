-- Update 1: Adicionar um badge aos badges do Faker
UPDATE players SET badges = badges + {'T1 GOAT'} WHERE summoner_name = 'Faker';

-- Update 2: Adicionar um champion ao início da lista most_played do Uzi
UPDATE players SET most_played = ['Jinx'] + most_played WHERE summoner_name = 'Uzi';

-- Update 3: Atualizar preferência no server do Caps
UPDATE players SET preferences['server'] = 'EUW1' WHERE summoner_name = 'Caps';

-- Update 4: Remover um badge específico do Rekkles
UPDATE players SET badges = badges - {'LEC Champion'} WHERE summoner_name = 'Rekkles';

-- Update 5: Adicionar uma runa às runas do Garen usadas pelo Zeus
UPDATE player_champion_stats
    SET runes_used = runes_used + {'Overgrowth'}
    WHERE summoner_name = 'Zeus' AND champion_name = 'Garen';

-- Update 6: Adicionar item ao final da lista de items preferidos do Keria quando usa o Thresh
UPDATE player_champion_stats
    SET items_preferred = items_preferred + ['Redemption']
    WHERE summoner_name = 'Keria' AND champion_name = 'Thresh';

-- Update 7: Atualizar LP do ShowMaker
UPDATE players SET lp = 820 WHERE summoner_name = 'ShowMaker';

-- Update 8: Adicionar 5 jogos ao role_played do Ruler quando joga de Jinx no Mid
UPDATE player_champion_stats
    SET role_played['Mid'] = 5
    WHERE summoner_name = 'Ruler' AND champion_name = 'Jinx';

-- Update 9: Atualizar win_rate da Ahri
UPDATE champions SET win_rate = 53.0 WHERE champion_id = 1;

-- Update 10: Adicionar counter ao set de counters do Zed
UPDATE champions SET counters = counters + {'Zhonya Zhivago'} WHERE champion_id = 2;

---------------------------------------------------------------------------------------------------

-- Delete 1: Remover um badge específico do set do Uzi
DELETE badges['MSI Champion'] FROM players WHERE summoner_name = 'Uzi';

-- Delete 2: Remover preferência específica do mapa do Impact
DELETE preferences['region_pref'] FROM players WHERE summoner_name = 'Impact';

-- Delete 3: Remover uma entrada do role_played map do TheShy quando joga de Fiora
DELETE role_played['Mid'] FROM player_champion_stats
    WHERE summoner_name = 'TheShy' AND champion_name = 'Fiora';

-- Delete 4: Remover as runas do set de runas usadas pelo Garen quando jogado pelo Zeus
DELETE runes_used FROM player_champion_stats
    WHERE summoner_name = 'Zeus' AND champion_name = 'Garen';

-- Delete 5: Remover preferência do mapa de um jogador
DELETE preferences['server'] FROM players WHERE summoner_name = 'Caps';