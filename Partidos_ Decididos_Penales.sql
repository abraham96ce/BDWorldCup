SELECT 
	tournament_name AS Encuentros,    
	match_date AS Fecha_encuentro,
    stage_name AS Fase,
	match_name AS 'Encuentros',
    home_team_score_penalties AS Penales_Local,
    away_team_score_penalties AS Penales_Visitante,
    score_penalties AS Marcador_Penal,
	CASE
		WHEN home_team_name = 'Mexico'
		THEN away_team_name
	ELSE home_team_name
	END AS Rival,
	#home_team_name AS Local,
	#away_team_name AS Visitante, 
	score AS Marcador
FROM matches
WHERE (home_team_score_penalties AND away_team_score_penalties) > 0 AND (home_team_name = 'Mexico' OR away_team_name = 'Mexico');