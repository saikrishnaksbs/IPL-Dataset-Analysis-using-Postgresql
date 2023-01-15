create table deliveries
(
match_id integer,
inning integer,
batting_team varchar(100),
bowling_team varchar(100),
over integer,
ball integer,
batsman varchar(100),
non_striker varchar(100),
bowler varchar(100),
is_super_over integer,
wide_runs integer,
bye_runs integer,
legbye_runs integer,
noball_runs integer,
penalty_runs integer,
batsman_runs integer,
extra_runs integer,
total_runs integer,
player_dismissed varchar(100),
dismissal_kind varchar(100),
fielder varchar(100),
primary key(match_id, inning, over, ball),
foreign key(match_id) references matches(id)
);
\COPY deliveries FROM '/home/saikrishna/postgre/deliveries.csv' DELIMITER ',' CSV HEADER;