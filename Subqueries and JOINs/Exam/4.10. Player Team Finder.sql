CREATE OR REPLACE PROCEDURE sp_players_team_name(player_name VARCHAR(50), OUT team_name VARCHAR(45))
LANGUAGE plpgsql
AS $$
BEGIN
    SELECT 
        CASE 
            WHEN tm.name IS NOT NULL THEN tm.name
            ELSE 'The player currently has no team'
        END
    	INTO team_name
    FROM
		players AS pl
    		 LEFT JOIN teams AS tm 
					ON pl.team_id = tm.id
    WHERE
	 CONCAT(pl.first_name, ' ', pl.last_name) = player_name;
END;
$$;