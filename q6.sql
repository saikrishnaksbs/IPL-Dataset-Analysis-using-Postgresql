select
    winner,
    season,
    count(winner) as total_wins
from
    matches
group by
    winner,
    season
order by
    winner,
    season;