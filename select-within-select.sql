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
