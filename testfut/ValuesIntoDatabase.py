import pyodbc
from soccer_data_api import SoccerDataAPI

server = 'SADIA\SQLEXPRESS'
database = 'FootballTracker'

connection_string = f'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={server};DATABASE={database};Trusted_Connection=yes;'
conn = pyodbc.connect(connection_string)
cursor = conn.cursor()


soccer_data = SoccerDataAPI()


league_data = soccer_data.english_championship()


cursor.execute("INSERT INTO leagues (name) VALUES (?)", ("English Division 2",))

for entry in league_data:
    TeamName = entry['team']
    LeagueName = "English Division 2"
    Position = entry['pos']
    Points = entry['points']
    MatchesPlayed = entry['matches_played']
    wins = entry['wins']
    draws = entry['draws']
    losses = entry['losses']
    GoalsFor = entry['goals_for']
    GoalsAgainst = entry['goals_against']
    GoalDifference = entry['goal_diff']

    cursor.execute("INSERT INTO teams (name) VALUES (?)", (TeamName,))

    cursor.execute("""
        INSERT INTO LeagueStandings (LeagueName, TeamName, Position, Points, MatchesPlayed, wins, draws, losses, GoalsFor, GoalsAgainst, GoalDifference)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    """, (LeagueName, TeamName, Position, Points, MatchesPlayed, wins, draws, losses, GoalsFor, GoalsAgainst, GoalDifference))

    top_scorer = entry['top_scorer'].split(" - ")
    player_name = top_scorer[0]
    goals = int(top_scorer[1])

    cursor.execute("INSERT INTO players (name, TeamName) VALUES (?, ?)", (player_name, TeamName))

    cursor.execute("SELECT id FROM players WHERE name = ? AND TeamName = ?", (player_name, TeamName))
    row = cursor.fetchone()
    if row is not None:
        PlayerId = row[0]


    cursor.execute("INSERT INTO TopScorers (PlayerID, TeamName, goals) VALUES (?, ?, ?)", (PlayerId, TeamName, goals))

conn.commit()
conn.close()