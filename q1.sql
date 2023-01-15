select
    batting_team,
    sum(total_runs)
from
    deliveries
group by
(batting_team)