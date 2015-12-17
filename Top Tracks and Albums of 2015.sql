select 
count(playevent.track_id) as total, "%"
, track.title, "%"
, playevent.track_id
from playevent 
join track 
on playevent.track_id = track.id
where playevent.day >= '2015-01-01'
and playevent.day <= '2015-12-01'
group by track.title, playevent.track_id
order by total desc limit 150
;


select 
count(1) as total, "%"
, release.title, "%"
, release.id
from playevent 
join release
on playevent.src_id = release.id
where src_type = 'release'
and playevent.day >= '2015-01-01'
and playevent.day <= '2015-12-01'
group by release.title, release.id
order by total desc limit 40
;