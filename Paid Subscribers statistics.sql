#Releases added to collection среди платных
select 
count(1) as total
, release.title
, release.id
from playevent 
join release
on playevent.src_id = release.id
join 
(
    select item_id & -9151314442816847873 as src_id
    from library 
    where floor(item_id/power(2,56)) = 6
    and date >= '2015-10-01'
    and date <= '2015-11-01'
) lib
on lib.src_id = release.id
where src_type = 'release'
and playevent.day >= '2015-10-01'
and playevent.day <= '2015-11-01'
and playevent.user_id in 
(
    select user_id
    from app_subscription
    where
    is_trial = false
    and (get_json_object(options, '$.payment_type_name') is null
     or get_json_object(options, '$.payment_type_name') = '5slots.1month')
    and (get_json_object(options, '$.testing') is null
     or get_json_object(options, '$.testing') = false)
    and expiration_date >= '2015-10-01'
    and start_date <= '2015-11-01'
    and status = 'confirmed'
    and price > 5
    and platform in ('apple', 'google', 'zvooq')
)
group by release.title, release.id
order by total desc limit 100
;



#Топ search requests среди бесплатных 
select 
count(1) as total
, searchevent.query
from searchevent 
where searchevent.time >= '2015-10-01'
and searchevent.time <= '2015-11-01'
and searchevent.user_id not in 
(
select user_id
    from app_subscription
    where
    is_trial = false
    and (get_json_object(options, '$.testing') is null
      or get_json_object(options, '$.testing') = false)
    and expiration_date >= '2015-10-01'
    and start_date <= '2015-11-01'
    and platform in ('apple', 'google', 'zvooq')
    and price > 5
)
group by searchevent.query
order by total desc limit 100
;


#Топ search requests среди платных 
select 
count(1) as total
, searchevent.query
from searchevent 
where searchevent.time >= '2015-10-01'
and searchevent.time <= '2015-11-01'
and searchevent.user_id in 
(
    select
      user_id
    from app_subscription
    where
    is_trial = false
    and (get_json_object(options, '$.payment_type_name') is null
     or get_json_object(options, '$.payment_type_name') = '5slots.1month')
    and (get_json_object(options, '$.testing') is null
      or get_json_object(options, '$.testing') = false)
    and expiration_date >= '2015-10-01'
    and start_date <= '2015-11-01'
    and status = 'confirmed'
    and price > 5
    and platform in ('apple', 'google', 'zvooq')
)
group by searchevent.query
order by total desc limit 100
;


#Топ альбомов среди бесплатных подписчиков
select 
count(1) as total
, release.title
, release.id
from playevent 
join release
on playevent.src_id = release.id
where src_type = 'release'
and playevent.day >= '2015-10-01'
and playevent.day <= '2015-11-01'
and playevent.user_id not in 
(
select user_id
    from app_subscription
    where
    is_trial = false
    and (get_json_object(options, '$.testing') is null
      or get_json_object(options, '$.testing') = false)
    and expiration_date >= '2015-10-01'
    and start_date <= '2015-11-01'
    and platform in ('apple', 'google', 'zvooq')
    and price > 5
)
group by release.title, release.id
order by total desc limit 100
;

#Топ альбомов среди платных подписчиков
select 
count(1) as total
, release.title
, release.id
from playevent 
join release
on playevent.src_id = release.id
where src_type = 'release'
and playevent.day >= '2015-10-01'
and playevent.day <= '2015-11-01'
and playevent.user_id in 
(
    select
      user_id
    from app_subscription
    where
    is_trial = false
    and (get_json_object(options, '$.payment_type_name') is null
     or get_json_object(options, '$.payment_type_name') = '5slots.1month')
    and (get_json_object(options, '$.testing') is null
      or get_json_object(options, '$.testing') = false)
    and expiration_date >= '2015-10-01'
    and start_date <= '2015-11-01'
    and status = 'confirmed'
    and price > 5
    and platform in ('apple', 'google', 'zvooq')
)
group by release.title, release.id
order by total desc limit 100
;



#Топ плейлистов среди бесплатных подписчиков
select 
count(1) as total
, playlist.name
, playlist.id
from playevent 
join playlist 
on playevent.src_id = playlist.id
where src_type = 'playlist'
and playevent.day >= '2015-10-01'
and playevent.day <= '2015-11-01'
and playevent.user_id not in 
(
select user_id
    from app_subscription
    where
    is_trial = false
    and (get_json_object(options, '$.testing') is null
      or get_json_object(options, '$.testing') = false)
    and expiration_date >= '2015-10-01'
    and start_date <= '2015-11-01'
    and platform in ('apple', 'google', 'zvooq')
    and price > 5
)
group by playlist.name, playlist.id
order by total desc limit 100
;

#Топ плейлистов среди платных подписчиков
select 
count(playevent.track_id) as total
, playlist.name
, playlist.id
from playevent 
join playlist 
on playevent.src_id = playlist.id
where src_type = 'playlist'
and playevent.day >= '2015-10-01'
and playevent.day <= '2015-11-01'
and playevent.user_id in 
(
    select
      user_id
    from app_subscription
    where
    is_trial = false
    and (get_json_object(options, '$.payment_type_name') is null
     or get_json_object(options, '$.payment_type_name') = '5slots.1month')
    and (get_json_object(options, '$.testing') is null
      or get_json_object(options, '$.testing') = false)
    and expiration_date >= '2015-10-01'
    and start_date <= '2015-11-01'
    and status = 'confirmed'
    and price > 5
    and platform in ('apple', 'google', 'zvooq')
)
group by playlist.name, playlist.id
order by total desc limit 100
;


#Топ треков среди бесплатных подписчиков (включая триальщиков)
select 
count(playevent.track_id) as total
, track.title
from playevent 
join track 
on playevent.track_id = track.id
where playevent.day >= '2015-10-01'
and playevent.day <= '2015-11-01'
and playevent.user_id not in 
(
select user_id
    from app_subscription
    where
    is_trial = false
    and (get_json_object(options, '$.testing') is null
      or get_json_object(options, '$.testing') = false)
    and expiration_date >= '2015-10-01'
    and start_date <= '2015-11-01'
    and platform in ('apple', 'google', 'zvooq')
    and price > 5
)
group by track.title
order by total desc limit 100
;


#Топ треков среди платных подписчиков
select 
count(playevent.track_id) as total
, track.title
from playevent 
join track 
on playevent.track_id = track.id
where playevent.day >= '2015-10-01'
and playevent.day <= '2015-11-01'
and playevent.user_id in 
(
    select
      user_id
    from app_subscription
    where
    is_trial = false
    and (get_json_object(options, '$.payment_type_name') is null
     or get_json_object(options, '$.payment_type_name') = '5slots.1month')
    and (get_json_object(options, '$.testing') is null
      or get_json_object(options, '$.testing') = false)
    and expiration_date >= '2015-10-01'
    and start_date <= '2015-11-01'
    and status = 'confirmed'
    and price > 5
    and platform in ('apple', 'google', 'zvooq')
)
group by track.title
order by total desc limit 100
;