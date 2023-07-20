DROP VIEW view_matches;
CREATE VIEW view_matches AS
SELECT 
	match_date AS Fecha_encuentro,
	match_name AS 'Encuentros',
	CASE
		WHEN home_team_name = 'Mexico'
		THEN away_team_name
	ELSE home_team_name
	END AS Rival,
	#home_team_name AS Local,
	#away_team_name AS Visitante, 
	score AS Marcador
FROM matches
WHERE 
	home_team_name = 'Mexico' 
	OR 
	away_team_name = 'Mexico';

SELECT * FROM view_matches