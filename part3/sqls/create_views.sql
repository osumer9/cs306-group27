CREATE OR REPLACE VIEW LITERACY_BY_YEAR
AS 
SELECT report_id,country_code , rate, year
FROM literacy_reports;

SELECT * FROM LITERACY_BY_YEAR;


CREATE OR REPLACE VIEW LITERACY_BY_AGE
AS
SELECT report_id, country_code, rate, age
FROM literacy_reports;

SELECT * FROM LITERACY_BY_AGE;


CREATE OR REPLACE VIEW LITERACY_BY_GENDER
AS
SELECT report_id, country_code, rate, gender
FROM literacy_reports;

SELECT * FROM LITERACY_BY_GENDER;


CREATE OR REPLACE VIEW LITERACY_ANALYSIS
AS
SELECT COUNTRY_CODE, COUNT(REPORT_ID) REPORT_COUNT, 
MAX(RATE) MAX_RATE, MIN(RATE) MIN_RATE, AVG(RATE) AVG_RATE
FROM LITERACY_REPORTS
GROUP BY COUNTRY_CODE;

SELECT * FROM LITERACY_ANALYSIS;


CREATE OR REPLACE VIEW LIT_EXP_V
AS
SELECT L.report_id,L.COUNTRY_CODE, L.RATE, L.YEAR, L.GENDER, L.AGE, E.exp_percentage
FROM literacy_reports AS L
JOIN  expenditure_report AS E ON(L.country_code = E.country_code AND L.YEAR = E.YEAR);

SELECT * FROM LIT_EXP_V;


CREATE OR REPLACE VIEW LIT_ENR_V
AS
SELECT L.report_id,L.COUNTRY_CODE, L.RATE, L.YEAR, L.GENDER, L.AGE, E.ratio RATIO
FROM literacy_reports AS L
JOIN  enrollment_report AS E ON(L.country_code = E.country_code AND L.YEAR = E.YEAR);

SELECT * FROM LIT_ENR_V;


CREATE OR REPLACE VIEW LIT_QUAL_V
AS
SELECT L.report_id, L.COUNTRY_CODE, L.RATE, L.YEAR, L.GENDER, L.AGE, E.teacher_percentage PERCENTAGE
FROM literacy_reports AS L
JOIN  teacher_quality_report AS E ON(L.country_code = E.country_code AND L.YEAR = E.YEAR);

SELECT * FROM LIT_QUAL_V;


CREATE OR REPLACE VIEW EXP_ANALYSIS
AS
SELECT COUNTRY_CODE, COUNT(EXP_ID) REPORT_COUNT, 
MAX(EXP_PERCENTAGE) MAX_EXP, MIN(EXP_PERCENTAGE) MIN_EXP, AVG(EXP_PERCENTAGE) AVG_EXP
FROM EXPENDITURE_REPORT
GROUP BY COUNTRY_CODE;

SELECT * FROM EXP_ANALYSIS;


CREATE OR REPLACE VIEW ENR_ANALYSIS
AS
SELECT COUNTRY_CODE, COUNT(ENR_ID) REPORT_COUNT, 
MAX(RATIO) MAX_RATIO, MIN(RATIO) MIN_RATIO, AVG(RATIO) AVG_RATIO
FROM ENROLLMENT_REPORT
GROUP BY COUNTRY_CODE;

SELECT * FROM ENR_ANALYSIS;


CREATE OR REPLACE VIEW QUAL_ANALYSIS
AS
SELECT COUNTRY_CODE, COUNT(QUALITY_ID) REPORT_COUNT, 
MAX(TEACHER_PERCENTAGE) MAX_PERCENTAGE, MIN(TEACHER_PERCENTAGE) MIN_PERCENTAGE, AVG(TEACHER_PERCENTAGE) AVG_PERCENTAGE
FROM TEACHER_QUALITY_REPORT
GROUP BY COUNTRY_CODE;

SELECT * FROM QUAL_ANALYSIS;