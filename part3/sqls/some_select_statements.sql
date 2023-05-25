/*average and minimum literacy rates for each age group and country with their average expenditures on education*/
SELECT L.age, L.country_code, AVG(L.rate) AS avg_literacy_rate, MIN(L.rate) AS min_literacy_rate, 
COUNT(L.report_id) AS literacy_report_count, AVG(E.exp_percentage) AS avg_expenditure
FROM literacy_reports L
JOIN expenditure_report E ON L.country_code = E.country_code AND L.year = E.year
GROUP BY L.age, L.country_code
HAVING AVG(L.rate) > 0.7 AND COUNT(L.report_id) >= 10;

/*average expenditure on education and min/max literacy rate by gender and countries where the average literacy rate is above 90%*/
SELECT L.gender,L.country_code, AVG(E.exp_percentage) AS avg_expenditure,
MAX(L.rate) AS max_literacy_rate, MIN(L.rate) AS min_literacy_rate, AVG(L.rate) AS avg_literacy_rate, COUNT(L.report_id) AS literacy_report_count
FROM literacy_reports L
JOIN expenditure_report E ON L.country_code = E.country_code AND L.year = E.year
GROUP BY L.gender, L.country_code
HAVING COUNT(L.report_id) >= 5 AND AVG(L.rate) >= 90;

/*average expenditure on education by country, for years where the enrollment ratio is above 90%:*/
SELECT E.country_code, AVG(L.rate) AS avg_literacy_rate, 
COUNT(L.report_id) AS literacy_report_count, AVG(E.exp_percentage) AS avg_expenditure
FROM expenditure_report E
JOIN literacy_reports L ON E.country_code = L.country_code AND E.year = L.year
JOIN enrollment_report ER ON E.country_code = ER.country_code AND E.year = ER.year
WHERE ER.ratio > 0.9
GROUP BY E.country_code
HAVING COUNT(L.report_id) >= 5;



