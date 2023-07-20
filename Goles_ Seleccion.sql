SELECT team_code, sum(goals_for), sum(goals_against)
FROM team_appearances
WHERE team_name = 'Mexico';