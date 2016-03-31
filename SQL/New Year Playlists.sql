select
    count (*) as total,
    avg(play_duration),
    src_id,
    playlist.name
from
    playevent
    join playlist
    on playevent.src_id = playlist.id
where
    src_type = 'playlist'
    and day >= '2015-12-20'
    and day < '2016-01-10'
group by src_id, playlist.name
order by total desc limit 20
;