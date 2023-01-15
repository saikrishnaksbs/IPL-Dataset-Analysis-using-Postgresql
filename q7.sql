select
    distinct(bowling_team) as teams,
    sum(extra_runs) as extra_runs
from
    deliveries as d
    inner join matches m on d.match_id = m.id
where
    m.season = '2016'
group by
    teams
order by
    extra_runs desc;