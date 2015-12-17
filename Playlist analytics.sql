select
month (packet_date), "%"
,playlist.id, "%" 
,playlist.name, "%"
,playlist.track_count, "%"
,playlist.duration, "%"
,count (1), "%"
,sum (case when play_duration >= 30 then 1 else 0 end), "%"
,sum (case when play_duration >= 30 then 1 else 0 end) / playlist.duration * 100, "%"
,count (distinct playevent.user_id), "%"
,count (distinct(case when play_duration >= 30 then playevent.user_id else 0 end)), "%"
,sum (case when playevent.stop_reason = 'next' then 1 else 0 end) 
from playlist
join recommended_playlist
on recommended_playlist.playlist_id = playlist.id
join playevent 
on playevent.src_id = playlist.id
where src_type = 'playlist'
and day >'2015-06-01'
group by playlist.id, playlist.name, playlist.track_count, playlist.duration, month (packet_date)
;
