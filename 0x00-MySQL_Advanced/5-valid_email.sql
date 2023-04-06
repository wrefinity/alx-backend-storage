-- a trigger that reset the valid_email attribute
-- valid_email on email changed
DELIMITER $$
CREATE TRIGGER email_validator BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
	IF NEW.email <> OLD.email THEN
    		SET NEW.valid_email = 0;
	END IF;
END; $$
DELIMITER ;
