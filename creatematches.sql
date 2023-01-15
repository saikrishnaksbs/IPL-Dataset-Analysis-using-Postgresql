create table matches(
id integer,
season varchar(100),
city varchar(100),
date DATE,
team1 varchar(100),
team2 varchar(100),
toss_winner varchar(100),
toss_decision varchar(100),
result varchar(100),
dl_applied int,
winner varchar(100),
win_by_runs int,
win_by_wickets int,
player_of_match varchar(100),
venue varchar(100),
umpire1 varchar(100),
umpire2 varchar(100),
umpire3 varchar(100),
primary key (id)
);

\COPY matches FROM '/home/saikrishna/postgre/matches.csv' DELIMITER ',' CSV HEADER;