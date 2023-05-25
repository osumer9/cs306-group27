SELECT MIN(rate), MAX(rate) FROM literacy_reports;

DROP TRIGGER IF EXISTS fix_rate_before_insert;

DROP TRIGGER IF EXISTS fix_rate_before_update;

ALTER TABLE literacy_reports ADD CONSTRAINT rate_range CHECK (rate >= 3.39 AND rate <= 100) ;

INSERT INTO literacy_reports (report_id, country_code, rate, year, gender, age)
VALUES (3351, 'TUR', 120, 2022, 'male', 'young');



DELIMITER //
CREATE TRIGGER fix_rate_before_insert
BEFORE INSERT ON literacy_reports
FOR EACH ROW
BEGIN
    IF NEW.rate > 100 THEN
        SET NEW.rate = 100;
    ELSEIF NEW.rate < 3.39 THEN
        SET NEW.rate = 3.39;
    END IF;
END//
DELIMITER ;


DELIMITER //
CREATE TRIGGER fix_rate_before_update
BEFORE UPDATE ON literacy_reports
FOR EACH ROW
BEGIN
    IF NEW.rate > 100 THEN
        SET NEW.rate = 100;
    ELSEIF NEW.rate < 3.39 THEN
        SET NEW.rate = 3.39;
    END IF;
END//
DELIMITER ;

INSERT INTO literacy_reports (report_id, country_code, rate, year, gender, age)
VALUES (3351, 'TUR', 120, 2022, 'male', 'young');

SELECT * FROM literacy_reports where report_id = 3351;

DELETE FROM literacy_reports WHERE report_id = 3351;
