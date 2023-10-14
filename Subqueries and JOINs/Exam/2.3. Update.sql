UPDATE coaches
SET salary = salary * coach_level
WHERE first_name LIKE 'C%'
AND id IN (
    SELECT DISTINCT pc.coach_id
    FROM 
        players_coaches AS pc
);
