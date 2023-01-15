select
    season,
    count(season)
from
    matches
group by
    season
order by
    season;