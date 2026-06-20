USE Breezedemo;

DROP PROCEDURE IF EXISTS SP_DeleteUser;

DELIMITER $$

CREATE PROCEDURE SP_DeleteUser(
    IN p_id INT
)
BEGIN
    DELETE FROM Users
    WHERE   Id = p_id;

    SELECT ROW_COUNT() AS affected;
END$$

DELIMITER ;