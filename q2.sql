select
    batsman,
    sum(batsman_runs) as max_runs
from
    deliveries
where
    batting_team = 'Royal Challengers Bangalore'
group by
    batting_team,
    batsman
order by
    max_runs desc
limit
    10;