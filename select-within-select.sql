#Ex1
SELECT name FROM world
  WHERE population > ANY
     (SELECT population FROM world
      WHERE name='Russia')
#Ex2
SELECT name FROM world
WHERE gdp/population > (
SELECT gdp/population FROM world WHERE name = 'United Kingdom' )
AND continent = 'Europe'

#Ex3
SELECT name, continent from world
WHERE continent IN (SELECT continent FROM world WHERE name IN('Argentina', 'Australia'))
ORDER BY name ASC

#Ex4
SELECT name, population FROM world
WHERE population >
(SELECT population FROM world WHERE name = 'United Kingdom')
AND population < (SELECT population FROM world WHERE name = 'Germany')

#Ex5
SELECT name, CONCAT(CAST(ROUND(100 * population/(SELECT population FROM world WHERE name = 'Germany'),0)as int), '%') AS percentage FROM world
WHERE continent = 'Europe'

#Ex6
SELECT name FROM world
    WHERE gdp > ALL(SELECT gdp FROM world WHERE continent = 'Europe' AND gdp > 0)
#Preciso fazer https://sqlzoo.net/wiki/SUM_and_COUNT

