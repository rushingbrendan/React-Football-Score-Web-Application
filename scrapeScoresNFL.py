import urllib
import os.path
from bs4 import BeautifulSoup
import datetime
import re
import config
import mysql.connector
import argparse

parser = argparse.ArgumentParser(description="Select date to scrape from.")
parser.add_argument("--date", metavar='-d', type=str, nargs=1, help="Date time in form of yyyy-mm-dd")

args = parser.parse_args()


today = datetime.datetime.now()
comparissonDate = datetime.datetime(2011, 8, 11)
appendingDate = datetime.datetime(2011, 8, 11)

if args.date is not None:
	comparissonDate = datetime.datetime.strptime(args.date[0], "%Y-%m-%d")
	appendingDate = datetime.datetime.strptime(args.date[0], "%Y-%m-%d")

i = 0

numericEncapsulate = re.compile(r"(\d+)")
wordFind = re.compile(r'([a-zA-Z,.]+)')

days = [

	' Sunday',
	' Monday',
	' Tuesday',
	' Wednesday',
	' Thursday',
	' Friday',
	' Saturday'
]

teamAbbreviations = [

	' BUF',
	' NYG',
	' NYJ',
	' CIN',
	' CLE',
	' PIT',
	' NE',
	' MIA',
	' JAC',
	' LAR',
	' LAC',
	' SEA',
	' WAS',
	' PHI',
	' NO',
	' DAL',
	' HOU',
	' DEN',
	' KC',
	' MIN',
	' OAK',
	' BAL',
	' TB',
	' ATL',
	' IND',
	' GB',
	' SF',
	' DET',
	' CHI',
	' CAR',
	' TEN',
	' ARI',
	' NFC',
	' AFC'
]

previousDate = "0"

while comparissonDate.date() < today.date():

	# Get the current week.
	week = datetime.timedelta(weeks=i)

	# Get the current date. (IS08601 yyyy-mm-dd
	date = ((appendingDate+week).strftime('%Y-%m-%d'))

	comparissonDate = datetime.datetime.strptime(date, "%Y-%m-%d")

	if comparissonDate == previousDate:
		continue

	previousDate = datetime.datetime.strptime(date, "%Y-%m-%d")

	url = "https://www.covers.com/Sports/NFL/Matchups?selectedDate=" + date

	# Get the request connection to the site.
	request = urllib.request.urlopen(url)

	# request the content and decode to utf-8 format.
	content = request.read().decode("utf-8")

	# Create a BeautifulSoup basic interface with the contnets of the entire page.
	soup = BeautifulSoup(content, "html.parser")

	# Create a BeautifulSoup basic interface with all game boxes on the page.
	soup = BeautifulSoup(str(soup.find_all("div", {"class" : "cmg_matchup_game_box"})), "html.parser")


	# Remove all of the extra information from the game stats and format the output.
	gameStats = soup.get_text()
	gameStats = gameStats.replace("\n", " ")
	gameStats = gameStats.replace("\r", "")
	gameStats = gameStats.replace("\t", "")
	gameStats = gameStats.replace("History", "\n")
	gameStats = gameStats.replace(".", "")
	gameStats = gameStats.replace("TOdds", "")
	gameStats = gameStats.replace("Boxscore", "")
	gameStats = gameStats.replace("Recap", "")
	gameStats = gameStats.replace("Consensus", "")
	gameStats = gameStats.replace("Line", "")
	gameStats = gameStats.replace("BET GRAPH        Sorry, but this bet graph is unavailable", "")
	gameStats = gameStats.replace(".Covering By \"0\" - \"7\"Covering By \"8\" - \"15\"Covering By \"16\"+", "")


	gameStats = wordFind.sub(r'"\1", ', gameStats)
	gameStats = numericEncapsulate.sub(r'"\1", ', gameStats)
	gameStats = re.sub(r"  +", ' ', gameStats)
	gameStats = gameStats.replace('"', "")


	# Convert the game stats into a list and remove the first and last elements (Just a bunch of javascript)
	gameStats = gameStats.split("\n")
	gameStats.pop(len(gameStats) - 1)

	for game in gameStats:

		# Get a list from the game string delimited by commas
		game = game.split(',')
		game = list(filter(None, game))

		dayIndex = [i for i, e in enumerate(game) if e in days]

		# remove unnecessary information from the game data (Team city at Team city)
		del game[0:dayIndex[0]]

		# Get the indices of the abbreviated team names
		teamsNameIndices = [i for i, e in enumerate(game) if e in teamAbbreviations]

		# Remove all spaces from each element in the game data
		game = [x.strip(' ') for x in game]

		# Get the home team and away team names.
		if not teamsNameIndices:
			continue
		else:
			homeTeam = game[teamsNameIndices[0]]
			awayTeam = game[len(game) - 2]

		# Remove unnecessary information
		del game[teamsNameIndices[0] + 1: teamsNameIndices[0] + 5]

		if game.__contains__("Off"):
			game.remove("Off")
			game.remove("Off")

		if "PickPreviewTrendsConsensusLine" in game:
			print("Finished retrieving game data.")
			exit()

		# Create the home team and away team scores arrays
		homeTeamScores = []
		awayTeamScores = []

		# Get the scores for each team if the game went into overtime.
		if game.__contains__("OT"):
			homeTeamScores = list(map(int, game[teamsNameIndices[0] + 10: teamsNameIndices[0] + 15]))
			awayTeamScores = list(map(int, game[teamsNameIndices[0] + 17: teamsNameIndices[0] + 22]))
		# Otherwise, get the regular scores.
		else:
			homeTeamScores = list(map(int, game[teamsNameIndices[0] + 8: teamsNameIndices[0] + 12]))
			awayTeamScores = list(map(int, game[teamsNameIndices[0] + 14: teamsNameIndices[0] + 18]))

		# Get the date of the game from the numeric date at the 2nd index of the game stats
		# and the yyyy-mm portion of the date string.
		gameDay = game[2]
		gameDay = date[0:8] + gameDay[:]

		# Connect to the database
		connection = mysql.connector.connect(
    		host = config.HOST, user = config.USER,
    		passwd = config.PASS, db = config.DB)

		# Insert the game information
		cursor = connection.cursor()

		query = "INSERT INTO Game (awayTeamSpread, gameTotalLine, gameDate) VALUES (%s, %s, %s)"
		values = ("0.0", "0.0", gameDay)
		cursor.execute(query, values)
		connection.commit()


		# Get home team ID
		gameID = cursor.lastrowid
		query = "SELECT PK_TeamID FROM Team WHERE cityAbbreviation = '%s';"
		values = (homeTeam)
		cursor.reset()
		cursor = connection.cursor()
		cursor.execute(query % values)
		teamId = cursor.fetchone()
		connection.commit()

		if not teamId:
			continue
		homeTeamId = teamId[0]

		# Get away team ID
		query = "SELECT PK_TeamID FROM Team WHERE cityAbbreviation = '%s';"
		values = (awayTeam)
		cursor.reset()
		cursor = connection.cursor()
		cursor.execute(query % values)
		teamId = cursor.fetchone()
		connection.commit()

		if not teamId:
			continue
		awayTeamId = teamId[0]


		# Get the total scores for each team
		homeTeamTotal = sum(homeTeamScores)
		awayTeamTotal = sum(awayTeamScores)

		# Find the winner, or if the game was a tie.
		winnerID = ""
		if (homeTeamTotal > awayTeamTotal):
			winnerID = homeTeamId
		elif (homeTeamTotal < awayTeamTotal):
			winnerID = awayTeamId
		else:
			winnerID = "NULL"

		# Insert the game result
		query = "INSERT INTO GameResult (FK_GameResult_GameID, FK_GameResult_TeamID) VALUES (%s, %s)"
		values = (gameID, winnerID)
		cursor.reset()
		cursor = connection.cursor()
		cursor.execute(query % values)
		connection.commit()

		# Insert the game scores
		for quarter, (homeTeamScore, awayTeamScore) in enumerate(zip(homeTeamScores, awayTeamScores)):
			query = "INSERT INTO GameScores (FK_GameScores_GameID, quarterID, homeTeamPoints, awayTeamPoints) VALUES (%s, %s, %s, %s)"
			values = (gameID, quarter, homeTeamScore, awayTeamScore)
			cursor.reset()
			cursor = connection.cursor()
			cursor.execute(query % values)
			connection.commit()

	# Increment the week value.
	i += 1
