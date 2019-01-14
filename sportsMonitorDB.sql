CREATE DATABASE IF NOT EXISTS sportsMonitor;
USE sportsMonitor;


DROP TABLE IF EXISTS GameResult;
DROP TABLE IF EXISTS GameScores;
DROP TABLE IF EXISTS Game;
DROP TABLE IF EXISTS Team;


CREATE TABLE IF NOT EXISTS Team (
	
    PK_TeamID smallint UNIQUE AUTO_INCREMENT PRIMARY KEY NOT NULL,
    
    cityName mediumtext NOT NULL,
    cityAbbreviation varchar(3) NOT NULL
    
)Engine=InnoDB;
ALTER TABLE Team AUTO_INCREMENT=1;


INSERT IGNORE INTO Team (cityName, cityAbbreviation) VALUES
('Buffalo', 'BUF'),
('New York (G)', 'NYG'),
('New York (J)', 'NYJ'),
('Cincinnati', 'CIN'),
('Cleveland', 'CLE'),
('Pittsburgh', 'PIT'),
('New England', 'NE'),
('Miami', 'MIA'),
('Jacksonville', 'JAC'),
('Los Angeles (R)', 'LAR'),
('Los Angeles (C)', 'LAC'),
('Seattle', 'SEA'),
('Washington', 'WAS'),
('Philadelphia', 'PHI'),
('New Orleans', 'NO'),
('Dallas', 'DAL'),
('Houston', 'HOU'),
('Denver', 'DEN'),
('Kansas City', 'KC'),
('Minnesota', 'MIN'),
('Oakland', 'OAK'),
('Baltimore', 'BAL'),
('Tampa Bay', 'TB'),
('Atlanta', 'ATL'),
('Indiannaoplis', 'IND'),
('Green Bay', 'GB'),
('San Francisco', 'SF'),
('Detroit', 'DET'),
('Chicago', 'CHI'),
('Carolina', 'CAR'),
('Tennessee', 'TEN'),
('Arizona', 'ARI'),
('National Football Conference', 'NFC'),
('American Football Conference', 'AFC');


CREATE TABLE IF NOT EXISTS Game (

	PK_GameID int unsigned AUTO_INCREMENT PRIMARY KEY NOT NULL,
    
    awayTeamSpread double NOT NULL,
    gameTotalLine double NOT NULL,
    
    -- ISO8601 yyyy-mm-dd
    gameDate date NOT NULL
    
)Engine=InnoDB;
ALTER TABLE Game AUTO_INCREMENT=1;


CREATE TABLE IF NOT EXISTS GameResult (

	FK_GameResult_GameID int unsigned NOT NULL,
    FK_GameResult_TeamID smallint,

	CONSTRAINT FK_GameResult_GameID 
		FOREIGN KEY (FK_GameResult_GameID)
		REFERENCES Game (PK_GameID)
		ON DELETE CASCADE,
    
    CONSTRAINT FK_GameResult_TeamID 
		FOREIGN KEY (FK_GameResult_TeamID)
        REFERENCES Team (PK_TeamID)
        ON DELETE CASCADE
        
)Engine=InnoDB;


CREATE TABLE IF NOT EXISTS GameScores (
	
	FK_GameScores_GameID int unsigned NOT NULL,
    quarterID tinyint unsigned NOT NULL,
    homeTeamPoints tinyint unsigned NOT NULL,
    awayTeamPoints tinyint unsigned NOT NULL,
    
    CONSTRAINT FK_GameScores_GameID
		FOREIGN KEY (FK_GameScores_GameID)
        REFERENCES Game (PK_GameID)
        ON DELETE CASCADE
    
)Engine=InnoDB;