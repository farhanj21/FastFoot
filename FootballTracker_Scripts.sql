--Leagues table
CREATE TABLE Leagues (Name varchar(255) PRIMARY KEY);

--Teams table
CREATE TABLE Teams (Name varchar(255) PRIMARY KEY);

--League Standings table
CREATE TABLE LeagueStandings (LeagueName varchar(255),TeamName varchar(255),Position INT,Points INT,
       MatchesPlayed INT, wins INT, draws INT, losses INT, GoalsFor INT, GoalsAgainst INT, GoalDifference INT,
       PRIMARY KEY (LeagueName, TeamName),
	   FOREIGN KEY (LeagueName) REFERENCES leagues(name),
	   FOREIGN KEY (TeamName) REFERENCES teams(name));

-- Players table
CREATE TABLE Players (ID INT IDENTITY(1,1) PRIMARY KEY,Name varchar(255) NOT NULL, TeamName varchar(255),FOREIGN KEY (TeamName) REFERENCES teams(name));

--Top Scorers table
CREATE TABLE TopScorers (ID INT IDENTITY(1,1) PRIMARY KEY,PlayerName varchar(255), PlayerID INT, TeamName varchar(255),Goals INT,
    FOREIGN KEY (PlayerID) REFERENCES players(id),
    FOREIGN KEY (TeamName) REFERENCES teams(name));


--TEST QUERIES
--Select * from Teams;
--Select * from LeagueStandings where LeagueName = 'Premier League' order by Position asc;
--Select * from Players;