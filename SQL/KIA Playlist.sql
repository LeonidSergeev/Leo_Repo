select 
    count (distinct user_id) as total
from 
    playevent
join track 
on playevent.track_id = track.id
where 
    src_type = 'playlist'
    and src_id = '2696106'
;



select 
    max(play_duration)
    , good_app
from 
    playevent
where 
    src_type = 'playlist'
    and src_id = '2696106'
group by good_app
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
         and src_id = '2696106'
           group by user_id
     )
     select
         distinct playevent.user_id
         , sd.first_day
         , round(datediff(playevent.day, sd.first_day)) 
     from
         playevent
     join start_date sd
     on sd.user_id = playevent.user_id
     where
         playevent.src_type = 'playlist'
         and playevent.src_id = '2696106'
         and round(datediff(playevent.day, sd.first_day)) > 0
;
