-- UDF: Winrate Calculator
CREATE lol_db.calc_winrate(wins int, losses int)
    CALLED ON NULL INPUT
    RETURNS double
    LANGUAGE java
AS $$
    if (wins == null || losses == null) return 0.0;
    int total = wins + losses;
    if (total == 0) return 0.0;
    return (wins * 100.0) / total;
$$;

-- UDA: Média de LP pelos Jogadores todos os jogadores
CREATE OR lol_db.state_avg_lp(state tuple<int,int>, lp int)
    CALLED ON NULL INPUT
    RETURNS tuple<int,int>
    LANGUAGE java
AS $$
    if (lp == null) return state;
    int newSum = state.getInt(0) + lp;
    int newCount = state.getInt(1) + 1;
    state.setInt(0, newSum);
    state.setInt(1, newCount);
    return state;
$$;

CREATE lol_db.final_avg_lp(state tuple<int,int>)
    CALLED ON NULL INPUT
    RETURNS double
    LANGUAGE java
AS $$
    if (state.getInt(1) == 0) return 0.0;
    return (double) state.getInt(0) / state.getInt(1);
$$;

CREATE lol_db.avg_lp(int)
    SFUNC state_avg_lp
    STYPE tuple<int,int>
    FINALFUNC final_avg_lp
    INITCOND (0, 0);