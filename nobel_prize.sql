#Ex9
SELECT yr, subject, winner FROM nobel
WHERE yr = 1980 and subject NOT IN ('chemistry', 'medicine');

#Ex10
SELECT yr, subject, winner FROM nobel
WHERE (subject = 'Medicine' AND yr < 1910) OR
(subject = 'Literature' AND yr >= 2004);

#Ex11
SELECT yr, subject, winner FROM nobel
WHERE winner = 'PETER GRÜNBERG';

#Ex12
SELECT yr, subject, winner FROM nobel
WHERE winner = "Eugene O'Neill"

#Ex13
SELECT winner, yr, subject FROM nobel
WHERE winner LIKE 'Sir%' 
ORDER BY yr DESC, winner

#Ex14
SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('chemistry', 'physics'), subject,winner
