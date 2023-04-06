--a procedure for ComputeAverageWeightedScoreForUser that computes and store the average weighted score for a student
DROP PROCEDURE IF EXISTS ComputeAverageWeightedScoreForUser;
DELIMITER $$
CREATE PROCEDURE ComputeAverageWeightedScoreForUser(
    user_id int
)
BEGIN
    DECLARE avg_weight float;
    SET avg_weight = (SELECT SUM(score * weight) / SUM(weight) 
                        FROM users AS US 
                        JOIN corrections AS CR ON US.id=CR.user_id 
                        JOIN projects AS PJ ON CR.project_id=PJ.id 
                        WHERE US.id=user_id);
    UPDATE users SET average_score = avg_weight WHERE id=user_id;
END $$
DELIMITER ;
