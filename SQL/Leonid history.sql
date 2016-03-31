select 
count(*) as total
, sum(playevent.play_duration) total2
, sum(playevent.track_duration)
, track.title
, tcredits.credits
from playevent 
join track 
on playevent.track_id = track.id
join tcredits
on tcredits.ztid = playevent.track_id
where playevent.user_id = '24126698'
and playevent.play_duration > 0
group by track.title, tcredits.credits
order by total
;