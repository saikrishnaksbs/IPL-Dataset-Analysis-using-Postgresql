select
    distinct(bowler) as bowlers,
    round((sum(total_runs) /(count(match_id) * 1.0)) * 6, 2) as economy
from
    deliveries as d
    inner join matches as m on d.match_id = m.id
where
    m.season = '2015'
group by
    bowler
order by
    economy
limit
    10;