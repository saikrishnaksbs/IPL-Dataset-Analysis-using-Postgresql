Create table umpires (umpire varchar(100), country varchar(100));

\ COPY umpires
FROM
    '/home/saikrishna/postgre/umpires.csv' DELIMITER ',' CSV HEADER;

select
    country as Nationality,
    count(country) as No_of_Umpires
from
    umpires
where
    country != ' India'
group by
    Nationality
order by
    No_of_Umpires desc;