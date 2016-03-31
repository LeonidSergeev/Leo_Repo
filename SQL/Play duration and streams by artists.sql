select count(p.user_id) as cnt,
sum(p.play_duration),
artist.name
from playevent p
join tartist a
on p.track_id = a.track_id
join artist
on artist.id = a.artist_id
where artist.id in ("105307", "324744", "748601", "1989291")
and day >= "2015-09-01"
and day <= "2016-03-19"
group by artist.name
order by cnt desc limit 100
;