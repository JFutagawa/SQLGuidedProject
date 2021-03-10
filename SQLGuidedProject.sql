SELECT CONCAT(nameFirst, ' ', nameLast) AS 'Name', Batting.H/Batting.AB AS 'Hit Rate', Batting.teamID 
FROM People INNER JOIN Batting ON People.playerID = Batting.playerID 
WHERE yearID = 2019 AND Batting.AB > 10
ORDER BY Batting.H/Batting.AB DESC LIMIT 15;

SELECT CONCAT(nameFirst, ' ', nameLast) AS 'Name', Pitching.SO AS 'Strikeouts', Pitching.teamID 
FROM People RIGHT JOIN Pitching ON People.playerID = Pitching.playerID 
WHERE yearID = 2019 
ORDER BY Strikeouts DESC LIMIT 15;

SELECT CONCAT(nameFirst, ' ', nameLast) AS 'Name', Salaries.salary, Salaries.teamID 
FROM People LEFT JOIN Salaries ON People.playerID = Salaries.playerID 
WHERE yearID = 2016 ORDER BY Salaries.salary DESC LIMIT 20;