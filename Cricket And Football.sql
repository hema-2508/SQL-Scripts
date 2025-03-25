CREATE TABLE Cricket_info(team_name varchar(40),
captian varchar(40),
players int,
rep_state varchar(40),
runs int,
wickets int, 
matches_played int,
wins int, 
losses int,
highest_score int);
INSERT INTO Cricket_info (team_name, captian, players, rep_state, runs, wickets, matches_played, wins, losses, highest_score) VALUES
('Chennai Super Kings', 'MS Dhoni', 25, 'Tamil Nadu', 4800, 78, 14, 9, 5, 230),
('Mumbai Indians', 'Hardik Pandya', 24, 'Maharashtra', 5000, 85, 14, 8, 6, 240),
('Royal Challengers Bangalore', 'Faf du Plessis', 23, 'Karnataka', 4700, 79, 14, 7, 7, 225),
('Kolkata Knight Riders', 'Shreyas Iyer', 25, 'West Bengal', 4600, 75, 14, 8, 6, 215),
('Delhi Capitals', 'Rishabh Pant', 24, 'Delhi', 4500, 73, 14, 6, 8, 210),
('Rajasthan Royals', 'Sanju Samson', 23, 'Rajasthan', 4900, 77, 14, 9, 5, 220),
('Sunrisers Hyderabad', 'Pat Cummins', 24, 'Telangana', 4550, 72, 14, 7, 7, 205),
('Punjab Kings', 'Shikhar Dhawan', 24, 'Punjab', 4400, 70, 14, 6, 8, 198),
('Lucknow Super Giants', 'KL Rahul', 23, 'Uttar Pradesh', 4700, 74, 14, 8, 6, 225),
('Gujarat Titans', 'Shubman Gill', 25, 'Gujarat', 4850, 80, 14, 9, 5, 228),
('Hyderabad Hurricanes', 'David Warner', 24, 'Andhra Pradesh', 4300, 68, 14, 5, 9, 190),
('Goa Gladiators', 'Mayank Agarwal', 23, 'Goa', 4200, 65, 14, 5, 9, 185),
('Chandigarh Challengers', 'Rahul Tewatia', 24, 'Chandigarh', 4100, 60, 14, 4, 10, 178),
('Bihar Blasters', 'Ishan Kishan', 23, 'Bihar', 4050, 58, 14, 3, 11, 170),
('Jharkhand Jaguars', 'Virat Singh', 24, 'Jharkhand', 4000, 55, 14, 2, 12, 165);

SELECT * FROM Cricket_info;

ALTER TABLE Cricket_info ADD lowest_score int;
ALTER TABLE Cricket_info ADD ranking int;

ALTER TABLE Cricket_info RENAME COLUMN ranking TO ranks;
ALTER TABLE Cricket_info RENAME COLUMN highest_score TO high_scr;
ALTER TABLE Cricket_info RENAME COLUMN matches_played TO ttl_matches;
ALTER TABLE Cricket_info RENAME COLUMN players TO no_of_players;

UPDATE Cricket_info SET ranks = 1 WHERE team_name = 'Chennai Super Kings';
UPDATE Cricket_info SET ranks = 2 WHERE team_name = 'Mumbai Indians' OR team_name = 'Gujarat Titans';
UPDATE Cricket_info SET ranks = 3 WHERE team_name IN ('Royal Challengers Bangalore', 'Kolkata Knight Riders');
UPDATE Cricket_info SET ranks = 4 WHERE team_name NOT IN ('Chennai Super Kings', 'Mumbai Indians', 'Gujarat Titans', 'Royal Challengers Bangalore', 'Kolkata Knight Riders');
UPDATE Cricket_info SET lowest_score = 150 WHERE ranks <= 3 AND wins >= 8;

DELETE FROM Cricket_info WHERE team_name = 'Bihar Blasters';
DELETE FROM Cricket_info WHERE team_name = 'Goa Gladiators';
DELETE FROM Cricket_info WHERE team_name = 'Hyderabad Hurricanes';

SELECT * FROM Cricket_info WHERE team_name = 'Mumbai Indians';

SELECT * FROM Cricket_info WHERE wins >= 8 AND ranks <= 3;

SELECT * FROM Cricket_info WHERE team_name = 'Delhi Capitals' OR team_name = 'Sunrisers Hyderabad';

SELECT * FROM Cricket_info WHERE team_name IN ('Chennai Super Kings', 'Mumbai Indians', 'Rajasthan Royals');

SELECT * FROM Cricket_info WHERE team_name NOT IN ('Chennai Super Kings', 'Mumbai Indians');

SELECT * FROM Cricket_info WHERE wins BETWEEN 5 AND 8;

SELECT * FROM Cricket_info WHERE wins NOT BETWEEN 5 AND 8;

SELECT * FROM Cricket_info WHERE team_name LIKE 'CHE%';

SELECT * FROM Cricket_info WHERE team_name NOT LIKE 'RA%';



CREATE TABLE Football_info (
    team_name VARCHAR(40),
    captain VARCHAR(40),
    no_of_players INT,
    rep_state VARCHAR(40),
    goals INT,
    clean_sheets INT, 
    ttl_matches INT,
    wins INT, 
    losses INT,
    high_scr INT
);

INSERT INTO Football_info (team_name, captain, no_of_players, rep_state, goals, clean_sheets, ttl_matches, wins, losses, high_scr) VALUES
('Mumbai Strikers', 'Sunil Chhetri', 25, 'Maharashtra', 50, 8, 20, 12, 6, 5),
('Bangalore Warriors', 'Gurpreet Singh', 24, 'Karnataka', 45, 10, 20, 11, 7, 4),
('Delhi Dynamos', 'Anirudh Thapa', 23, 'Delhi', 42, 7, 20, 10, 8, 4),
('Goa Hurricanes', 'Brandon Fernandes', 25, 'Goa', 55, 12, 20, 13, 5, 6),
('Kolkata Kings', 'Liston Colaco', 24, 'West Bengal', 48, 9, 20, 11, 7, 5),
('Chennai Champions', 'Sahal Abdul Samad', 23, 'Tamil Nadu', 40, 6, 20, 9, 9, 3),
('Punjab Panthers', 'Manvir Singh', 24, 'Punjab', 38, 7, 20, 8, 10, 3),
('Hyderabad Hawks', 'Nikhil Poojary', 23, 'Telangana', 50, 11, 20, 12, 6, 5),
('Kerala Kickers', 'Jeakson Singh', 25, 'Kerala', 47, 8, 20, 10, 8, 4),
('Rajasthan Rangers', 'Rahul Bheke', 24, 'Rajasthan', 52, 10, 20, 13, 5, 6),
('Lucknow Lions', 'Pritam Kotal', 23, 'Uttar Pradesh', 36, 5, 20, 7, 11, 2),
('Gujarat Gladiators', 'Sandesh Jhingan', 24, 'Gujarat', 44, 9, 20, 10, 8, 4),
('Chandigarh Challengers', 'Lalengmawia Ralte', 23, 'Chandigarh', 35, 4, 20, 6, 12, 2),
('Bihar Blasters', 'Jackichand Singh', 24, 'Bihar', 33, 3, 20, 5, 13, 1),
('Jharkhand Jaguars', 'Vinit Rai', 23, 'Jharkhand', 30, 2, 20, 4, 14, 1);

ALTER TABLE Football_info ADD lowest_score INT;
ALTER TABLE Football_info ADD ranking INT;

ALTER TABLE Football_info RENAME COLUMN ranking TO ranks;
ALTER TABLE Football_info RENAME COLUMN high_scr TO high_score;
ALTER TABLE Football_info RENAME COLUMN ttl_matches TO total_matches;
ALTER TABLE Football_info RENAME COLUMN no_of_players TO total_players;

UPDATE Football_info SET ranks = 1 WHERE team_name = 'Goa Hurricanes';
UPDATE Football_info SET ranks = 2 WHERE team_name = 'Mumbai Strikers' OR team_name = 'Rajasthan Rangers';
UPDATE Football_info SET ranks = 3 WHERE team_name IN ('Bangalore Warriors', 'Kolkata Kings');
UPDATE Football_info SET ranks = 4 WHERE team_name NOT IN ('Goa Hurricanes', 'Mumbai Strikers', 'Rajasthan Rangers', 'Bangalore Warriors', 'Kolkata Kings');
UPDATE Football_info SET lowest_score = 1 WHERE ranks <= 3 AND wins >= 10;

DELETE FROM Football_info WHERE team_name = 'Bihar Blasters';
DELETE FROM Football_info WHERE team_name = 'Chandigarh Challengers';
DELETE FROM Football_info WHERE team_name = 'Jharkhand Jaguars';

SELECT * FROM Football_info WHERE team_name = 'Mumbai Strikers';

SELECT * FROM Football_info WHERE wins >= 10 AND ranks <= 3;

SELECT * FROM Football_info WHERE team_name = 'Delhi Dynamos' OR team_name = 'Hyderabad Hawks';

SELECT * FROM Football_info WHERE team_name IN ('Goa Hurricanes', 'Mumbai Strikers', 'Rajasthan Rangers');

SELECT * FROM Football_info WHERE team_name NOT IN ('Goa Hurricanes', 'Mumbai Strikers');

SELECT * FROM Football_info WHERE wins BETWEEN 7 AND 11;

SELECT * FROM Football_info WHERE wins NOT BETWEEN 7 AND 11;

SELECT * FROM Football_info WHERE team_name LIKE 'GOA%';

SELECT * FROM Football_info WHERE team_name NOT LIKE 'RAJ%';

