-- a script an addbonus procedure
DROP PROCEDURE IF EXISTS AddBonus;
DELIMITER $$ ;
CREATE PROCEDURE AddBonus(
	IN user_id int,
	IN project_name varchar(255),
	IN score int
)
BEGIN
	IF NOT EXISTS(SELECT name FROM projects WHERE name=project_name) THEN
		INSERT INTO projects (name) VALUES (project_name);
	END IF;
	INSERT INTO corrections (user_id, project_id, score)
	VALUES (user_id, (SELECT id from projects WHERE name=project_name), score);
END;$$
DELIMITER ;
