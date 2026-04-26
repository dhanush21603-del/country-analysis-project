CREATE DATABASE country_project;
USE country_project;
CREATE TABLE country_stats (
    country TEXT,
    child_mort FLOAT,
    exports FLOAT,
    health FLOAT,
    imports FLOAT,
    income FLOAT,
    inflation FLOAT,
    life_expec FLOAT,
    total_fer FLOAT,
    gdpp FLOAT,
    segment TEXT
);

drop table country_stats;

SELECT * FROM country_stats ;

SELECT segment, AVG(income) AS avg_income
FROM country_stats
GROUP BY segment;

SELECT country, child_mort, income
FROM country_stats
WHERE segment = 'High Risk Country'
ORDER BY child_mort DESC
LIMIT 10;

SELECT country, inflation
FROM country_stats
ORDER BY inflation DESC
LIMIT 10;

SELECT country, gdpp
FROM country_stats
ORDER BY gdpp ASC
LIMIT 10;

SELECT segment, AVG(life_expec) AS avg_life
FROM country_stats
GROUP BY segment;

SELECT 
    segment,
    COUNT(*) AS total_countries,
    AVG(income) AS avg_income,
    AVG(gdpp) AS avg_gdp,
    AVG(child_mort) AS avg_mortality
FROM country_stats
GROUP BY segment;

UPDATE country_stats
SET segment_new = 
CASE 
    WHEN child_mort > 80 AND income < 5000 THEN 'High Risk Country'
    WHEN income > 30000 AND life_expec > 78 THEN 'Developed Nation'
    WHEN income BETWEEN 8000 AND 30000 THEN 'Emerging Economy'
    WHEN inflation > 15 THEN 'High Inflation Risk'
    WHEN health < 5 AND child_mort > 70 THEN 'Health Critical'
    WHEN gdpp < 2000 THEN 'Low GDP Trap'
    ELSE 'Other'
END;

