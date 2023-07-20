SELECT player_appearances.player_id, 
player_appearances.tournament_name, 
player_appearances.match_name,
player_appearances.team_name, player_appearances.family_name, 
player_appearances.given_name, player_appearances.position_name,
players.count_tournaments, players.list_tournaments
FROM player_appearances
INNER JOIN players
ON player_appearances.player_id = players.player_id
WHERE players.count_tournaments >=1 AND team_name = 'Mexico';