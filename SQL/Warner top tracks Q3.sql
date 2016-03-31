select 
count(playevent.track_id) as total
, track.title
from playevent 
join track 
on playevent.track_id = track.id
join ztid_party_unique
on ztid_party_unique.ztid = track.id
join u
on u.zuid = playevent.user_id
where playevent.day >= '2015-07-01'
and playevent.day <= '2015-09-30'
and ztid_party_unique.partygroup = 'wmg'
and gender = 'female'
and age (birthday) > 14
and age (birthday) < 26
group by track.title
order by total desc limit 50
;