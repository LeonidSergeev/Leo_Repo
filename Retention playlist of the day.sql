with
start_date as (
      select
          min(day) as first_day
          , user_id
      from
          playevent
      where 
          src_type = 'playlist'
          and src_id = '2'
          and good_app ='web'
      group by user_id     
) 
select
    distinct playevent.user_id
    , sd.first_day
    , round(datediff(playevent.day, sd.first_day)) as day
from
    playevent
join start_date sd
on sd.user_id = playevent.user_id
where  
    src_type = 'playlist'
    and src_id = '2'
    and good_app ='web'
;

with
     start_date as (
           select
               min(day) as first_day
               , user_id
           from
               playevent
           where
         src_type = 'playlist'
         and src_id = '1062105'
         and good_app ='web'
         and day >= '2015-11-01'
         and day < '2015-12-01'
           group by user_id
     )
     select
         distinct playevent.user_id
         , sd.first_day
         , round(datediff(playevent.day, sd.first_day)) as day
     from
         playevent
     join start_date sd
     on sd.user_id = playevent.user_id
     where
         playevent.src_type = 'playlist'
         and playevent.src_id = '1062105'
         and playevent.good_app ='web'
         and playevent.day >= '2015-11-01'
         and playevent.day < '2015-12-01'
         and round(datediff(playevent.day, sd.first_day)) > 0
     ;
