select
    sumoftables.team,
    sumoftables.season,
    sum(sumoftables.c1)
from
    (
        (
            select
                distinct (team1) as team,
                season,
                count(season) as c1
            from
                matches
            group by
                team,
                season
            order by
                team
        )
        union
        all (
            select
                distinct (team2) as team,
                season,
                count(season) as c1
            from
                matches
            group by
                team,
                season
            order by
                team
        )
    ) as sumoftables
group by
    sumoftables.team,
    sumoftables.season;

-- or

SELECT
    a.team1,
    a.season,
    count(a.team1) +(
        select
            count(team2)
        from
            matches
        where
            team2 = a.team1
            and season = a.season
    )
FROM
    matches a
group by
    a.team1,
    a.season
order by
    a.team1,
    a.season