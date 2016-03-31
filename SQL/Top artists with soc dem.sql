select 
count(*) as total
, artist.name
from playevent p
join u
on u.zuid = p.user_id
join tartist a
on p.track_id = a.track_id
join artist
on artist.id = a.artist_id
where 
    age (birthday) > 12
and age (birthday) < 39
group by artist.name
order by total desc limit 50
;


select 
count(*) as total
, artist.name
from playevent p
join u
on u.zuid = p.user_id
join tartist a
on p.track_id = a.track_id
join artist
on artist.id = a.artist_id
where 
country = 'UA'
group by artist.name
order by total desc limit 10
;