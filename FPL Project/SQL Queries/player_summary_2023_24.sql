SELECT 
player_id, 
player_name, 
player_team_name,
SUM(total_points) as total_points,
SUM(starts) as starts,
SUM(minutes) as minutes, 
SUM(goals_scored) as goals_scored, 
SUM(assists) as assists, 
SUM(clean_sheets) as clean_sheets, 
SUM(goals_conceded) as goals_conceded, 
SUM(own_goals) as own_goals, 
SUM(penalties_saved) as penalties_saved, 
SUM(penalties_missed) as penalties_missed, 
SUM(yellow_cards) as yellow_cards, 
SUM(red_cards) as red_cards, 
SUM(saves) as saves, 
SUM(bonus) as bonus, 
SUM(bps) as bps,  
ROUND(SUM(expected_goals)::numeric,2) as expected_goals, 
ROUND(SUM(expected_assists)::numeric,2) as expected_assists, 
ROUND(SUM(expected_goal_involvements)::numeric,2) as expected_goal_involvements, 
ROUND(SUM(expected_goals_conceded)::numeric,2) as expected_goals_conceded

FROM public.fpl_player_data
GROUP BY player_id, player_name, player_team_name
ORDER BY SUM(total_points) DESC


;