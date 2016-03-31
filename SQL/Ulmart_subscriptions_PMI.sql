select
  r.isrc as isrc
  , t.title as title
  , tm.contributors as author
  , tc.credits as artist
  , count(1) as cnt
from
playevent p
join app_subscription a
  on (p.user_id = a.user_id)
join track t
  on p.track_id = t.id
join tcredits tc
  on tc.ztid = p.track_id
join ref r
  on r.ztid = p.track_id
join tmeta tm
  on tm.ztid = p.track_id
where
  a.status = 'confirmed'
  and a.platform in ('ulmart', 'ulmart-recurrent')
  and p.packet_date > a.start_date
  and p.packet_date < a.expiration_date
  and ((p.good_app in ('web', 'openplay') and a.app in ('openplay', 'zvooq')) or (p.good_app = 'fonoteka' and a.app = 'fonoteka'))  
  and p.day >= '2015-10-01'
  and p.day < '2016-01-01'
  and p.ok_flag = true
  and p.play_duration > 30
  and r.zchan = 'pmi'
group by
  r.isrc 
  , t.title 
  , tm.contributors 
  , tc.credits 
;


select
count (distinct a.user_id),
a.price,
a.name
from
playevent p
join app_subscription a
  on (p.user_id = a.user_id)
join track t
  on p.track_id = t.id
join tcredits tc
  on tc.ztid = p.track_id
join ref r
  on r.ztid = p.track_id
join tmeta tm
  on tm.ztid = p.track_id
where
  a.status = 'confirmed'
  and a.platform in ('ulmart', 'ulmart-recurrent')
  and p.packet_date > a.start_date
  and p.packet_date < a.expiration_date
  and ((p.good_app in ('web', 'openplay') and a.app in ('openplay', 'zvooq')) or (p.good_app = 'fonoteka' and a.app = 'fonoteka'))  
  and p.day >= '2015-10-01'
  and p.day < '2016-01-01'
  and p.ok_flag = true
  and p.play_duration > 30
group by a.price, a.name
;