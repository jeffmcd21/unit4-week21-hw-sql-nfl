
-- 1. List the names of all NFL teams'
SELECT  name
FROM    teams;

-- 2. List the stadium name and head coach of all NFC teams
SELECT  stadium, head_coach
FROM    teams;

-- 3. List the head coaches of the AFC South
SELECT  head_coach
FROM    teams
WHERE   conference = 'AFC' AND division = 'South';

-- 4. The total number of players in the NFL
SELECT  COUNT(name)
FROM    players;

-- 5. The team names and head coaches of the NFC North and AFC East
SELECT  t.name, t.head_coach
FROM    teams AS t
WHERE   (t.conference = 'NFC' AND t.division = 'North')
          OR 
        (t.conference = 'AFC' AND t.division = 'East') 

-- 6. The 50 players with the highest salaries
SELECT  name, salary
FROM    players
ORDER BY salary DESC
LIMIT 50

-- 7. The average salary of all NFL players
SELECT  AVG(salary)
FROM    players

-- 8. The names and positions of players with a salary above 10_000_000
SELECT  name, position
FROM    players
WHERE   salary > 10000000

-- 9. The player with the highest salary in the NFL
SELECT  name, salary
FROM    players
ORDER BY salary DESC
LIMIT 1

-- 10. The name and position of the first 100 players with the lowest salaries
SELECT  name, position
FROM    players
ORDER BY salary ASC
LIMIT 100

-- 11. The average salary for a DE in the nfl
SELECT  AVG(salary)
FROM    players
WHERE   position = 'DE'

-- 12. The names of all the players on the Buffalo Bills
SELECT  p.name
FROM    players AS p
          INNER join
        teams AS t 
            ON  p.team_id = t.id 
WHERE   t.name = 'Buffalo Bills'

-- 13. The total salary of all players on the New York Giants
SELECT  AVG(salary)
FROM    players AS p
          INNER join
        teams AS t 
            ON  p.team_id = t.id 
WHERE   t.name = 'New York Giants'


-- 14. The player with the lowest salary on the Green Bay Packers
SELECT  p.*
FROM    players AS p 
          INNER JOIN teams AS t 
            ON p.team_id = t.id 
WHERE   t.name = 'Green Bay Packers'
ORDER BY  p.salary ASC 
LIMIT 1