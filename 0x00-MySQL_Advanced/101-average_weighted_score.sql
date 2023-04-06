-- a  procedure that computes and store the average weighted score for all students
DROP PROCEDURE IF EXISTS ComputeAverageWeightedScoreForUsers;
DELIMITER |
CREATE PROCEDURE ComputeAverageWeightedScoreForUsers()
BEGIN
    UPDATE users AS US, 
        (SELECT US.id, SUM(score * weight) / SUM(weight) AS avg_w 
        FROM users AS US 
        JOIN corrections as CR ON US.id=CR.user_id 
        JOIN projects AS PR ON CR.project_id=PR.id 
        GROUP BY US.id)
    AS WE
    SET US.average_score = WE.avg_w 
    WHERE US.id=WE.id;
END;
