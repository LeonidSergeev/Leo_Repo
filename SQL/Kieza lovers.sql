select count(*) as cnt,
artist.name,
p.user_id,
u.email,
u.name,
u.phone,
u.location,
u.username,
u.is_vkontakte_user,
u.is_facebook_user
from playevent p
join tartist a
on p.track_id = a.track_id
join artist
on artist.id = a.artist_id
join u 
on p.user_id = u.zuid
where artist.name = "Kiesza"
and day >= "2015-09-01"
and day <= "2016-03-01"
group by user_id, u.email, u.name, u.phone, artist.name, u.location, u.is_vkontakte_user, u.is_facebook_user, u.username
order by cnt desc limit 100
;