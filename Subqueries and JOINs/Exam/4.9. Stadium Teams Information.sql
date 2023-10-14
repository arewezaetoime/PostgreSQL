CREATE OR REPLACE FUNCTION fn_stadium_team_name(stadium_name VARCHAR(30))
RETURNS TABLE (team_name VARCHAR(45))
		AS
$body_func$
BEGIN
    RETURN QUERY
	
    SELECT
		tm.name
    FROM
        teams AS tm
    JOIN stadiums AS st
			  ON
		 tm.stadium_id = st.id
    WHERE
	st.name = stadium_name
    ORDER BY tm.name;
END;
$body_func$
LANGUAGE plpgsql;