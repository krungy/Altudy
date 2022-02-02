------------oracle------------
SELECT TO_CHAR(DATETIME, 'HH24') AS TIME, COUNT(DATETIME)
  FROM ANIMAL_OUTS
 GROUP BY TO_CHAR(datetime, 'HH24')
 HAVING TO_CHAR(datetime, 'HH24') BETWEEN 09 AND 19
 ORDER BY TO_CHAR(DATETIME, 'HH24') ASC

------------my sql------------
SELECT HOUR(AO.DATETIME) AS TIME, COUNT(AO.DATETIME)
  FROM ANIMAL_OUTS AO
 GROUP BY TIME
 HAVING TIME BETWEEN 09 AND 19
 ORDER BY TIME ASC