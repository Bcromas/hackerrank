/*SQL statements from HackerRank challenges*/

/*Weather Observation Station 2*/
SELECT ROUND(SUM(LAT_N),2), ROUND(SUM(LONG_W),2)
FROM STATION;

/*Weather Observation Station 5*/
SELECT CITY, CHAR_LENGTH(CITY) FROM STATION ORDER BY CHAR_LENGTH(CITY), CITY LIMIT 1; SELECT CITY, CHAR_LENGTH(CITY) FROM STATION ORDER BY CHAR_LENGTH(CITY) DESC, CITY LIMIT 1;

/*Weather Observation Station 6*/
SELECT CITY FROM STATION WHERE CITY LIKE 'a%' OR CITY LIKE 'e%' OR CITY LIKE 'i%' OR CITY LIKE 'o%' OR CITY LIKE 'u%';

/*Weather Observation Station 7*/
SELECT DISTINCT CITY FROM STATION WHERE CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u';

/*Weather Observation Station 8*/
SELECT DISTINCT CITY FROM STATION WHERE (CITY LIKE 'a%' OR CITY LIKE 'e%' OR CITY LIKE 'i%' OR CITY LIKE 'o%' OR CITY LIKE 'u%') AND (CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u');

/*Weather Observation Station 9*/
SELECT DISTINCT CITY FROM STATION WHERE CITY NOT LIKE 'a%' AND CITY NOT LIKE 'e%' AND CITY NOT LIKE 'i%' AND CITY NOT LIKE 'o%' AND CITY NOT LIKE 'u%';

/*Weather Observation Station 10*/
SELECT DISTINCT CITY FROM STATION WHERE CITY NOT LIKE '%a' AND CITY NOT LIKE '%e' AND CITY NOT LIKE '%i' AND CITY NOT LIKE '%o' AND CITY NOT LIKE '%u';

/*Weather Observation Station 11*/
SELECT DISTINCT CITY FROM STATION WHERE (CITY NOT LIKE '%a' AND CITY NOT LIKE '%e' AND CITY NOT LIKE '%i' AND CITY NOT LIKE '%o' AND CITY NOT LIKE '%u') OR (CITY NOT LIKE 'a%' AND CITY NOT LIKE 'e%' AND CITY NOT LIKE 'i%' AND CITY NOT LIKE 'o%' AND CITY NOT LIKE 'u%');

/*Weather Observation Station 12*/
SELECT DISTINCT CITY FROM STATION WHERE (CITY NOT LIKE '%a' AND CITY NOT LIKE '%e' AND CITY NOT LIKE '%i' AND CITY NOT LIKE '%o' AND CITY NOT LIKE '%u') OR (CITY NOT LIKE 'a%' AND CITY NOT LIKE 'e%' AND CITY NOT LIKE 'i%' AND CITY NOT LIKE 'o%' AND CITY NOT LIKE 'u%');

/*Weather Observation Station 13*/
SELECT ROUND(SUM(LAT_N),4)
FROM STATION
WHERE LAT_N BETWEEN 38.7880 AND 137.2345;

/*Weather Observation Station 14*/
SELECT ROUND(MAX(LAT_N),4)
FROM STATION
WHERE LAT_N < 137.2345;

/*Weather Observation Station 15*/
SELECT ROUND(MAX(LONG_W),4)
FROM STATION
WHERE LAT_N = (
    SELECT MAX(LAT_N) 
    FROM STATION 
    WHERE LAT_N < 137.2345
)

/*Weather Observation Station 16*/
SELECT ROUND(MIN(LAT_N),4)
FROM STATION
WHERE LAT_N > 38.7780;

/*Weather Observation Station 17*/
SELECT ROUND(MAX(LONG_W),4)
FROM STATION
WHERE LAT_N = (
    SELECT MIN(LAT_N)
    FROM STATION
    WHERE LAT_N > 38.7780
);

/*Weather Observation Station 18*/
SELECT ROUND(ABS(MIN(LAT_N) - MAX(LAT_N)) + ABS(MIN(LONG_W) - MAX(LONG_W)),4)
FROM STATION;

/*Weather Observation Station 19*/
SELECT ROUND(SQRT(
    (POWER(MIN(LAT_N) - MAX(LAT_N),2) + 
     POWER(MIN(LONG_W) - MAX(LONG_W),2)
    )),
             4)
FROM STATION;

/*Weather Observation Station 20*/
SELECT
CASE
    WHEN MOD(COUNT(*),2) = 0 THEN "EVEN" -- IF LIST IS EVEN LEN THEN SORT BY VALUE, SPLIT AT MIDDLE & TAKE (MIDDLE+1 + MIDDLE-1)/2
    ELSE "NOT EVEN" -- IF LIST IS ODD LEN THEN SORT BY VALUE & TAKE THE MIDDLE VALUE
END
FROM STATION;

