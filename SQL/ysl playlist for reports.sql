select
  count(1) as cnt
  , p.track_id as track_id
  , t.title as title
  , tc.credits as track_artist
  , r.isrc as isrc
  , r.catalog_number as product_number
  , ztp.zchan
  , tm.contributors as author
 from playevent p
left join track t
  on t.id = p.track_id
left join tcredits tc
  on tc.ztid = p.track_id
left join ref r
  on r.ztid = p.track_id
left join ztid_party ztp
  on ztp.ztid = t.id
left join tmeta tm
  on tm.ztid = p.track_id
where p.day >= '2016-02-11'
  and p.day <= '2016-03-11'
  and p.ok_flag = true
  and p.play_duration >= 30
  and src_id in (2896433, 2963866)
group by
  p.track_id
  , t.title
  , tc.credits
  , r.isrc
  , r.catalog_number
  , ztp.zchan
  , tm.contributors   
;