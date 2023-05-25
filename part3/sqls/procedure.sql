DROP PROCEDURE IF EXISTS get_lit_stats;

DELIMITER //
CREATE PROCEDURE get_lit_stats(IN iso_code VARCHAR(3))
BEGIN
	DECLARE code_exists INT DEFAULT 0;
    SELECT COUNT(*) INTO code_exists FROM literacy_reports WHERE country_code = iso_code;
    IF code_exists > 0 THEN
        SELECT * FROM literacy_reports WHERE country_code = iso_code;
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Country code does not exist in the literacy_reports table.';
    END IF;
END//
DELIMITER ;

CALL get_lit_stats('TUR');
CALL get_lit_stats('AFG');

CALL get_lit_stats('TDR');
