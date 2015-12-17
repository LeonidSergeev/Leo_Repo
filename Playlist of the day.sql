select 
    count (distinct user_id)
from 
    playevent
where 
    src_type = 'playlist'
    and src_id = '2'
    and good_app ='web'
;

select 
    avg(play_duration)
from 
    playevent
where 
    src_type = 'playlist'
    and src_id = '2'
    and good_app ='web'
;

select avg(cnt)
from
(select
   count (distinct track_id) as cnt
    , user_id
    , day
from
    playevent
where
    src_type = 'playlist'
    and src_id = '2'
    and good_app ='web'
group by user_id, day
) a
;

____________________________________
select
    count (*) total
    ,country
from
    playevent
where
    src_type = 'playlist'
    and src_id = '1062105'
    and good_app ='web'
    and day >= '2015-11-01'
    and day < '2015-12-01'
group by country
order by total desc 
;

select
    avg (play_duration)
from
    playevent
where
    src_type = 'playlist'
    and src_id = '1062105'
    and good_app ='web'
    and day >= '2015-11-01'
    and day < '2015-12-01'
;

select avg(cnt)
from
(select
   count (distinct track_id) as cnt
    , user_id
    , day
from
    playevent
where
    src_type = 'playlist'
    and src_id = '1062105'
    and good_app ='web'
    and day >= '2015-11-01'
    and day < '2015-12-01'
group by user_id, day
) a
;