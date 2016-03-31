select src_type, count (*)
from playevent
where track_id = 39493432
and day >= "2016-01-01"
group by src_type
;


select
  count(1) as cnt
  ,case when regexp(tc.credits, '[а-яА-Я]') then 'Russian' else "Foreign" end as usage
 from playevent p
join track t
  on t.id = p.track_id
join tcredits tc
  on tc.ztid = p.track_id
where p.day >= '2016-01-01'
and p.good_app != 'fonoteka'
group by
case when regexp(tc.credits, '[а-яА-Я]') then 'Russian' else "Foreign" end
;


select
  case when p.good_app = 'fonoteka' then 'fonoteka' when a.app is null then 'ad_support' else 'premium' end as usage
  ,case when regexp(tc.credits, '[а-яА-Я]') then 'Russian' else "Foreign" end as language
  , count(1) as total
from playevent p
 left join
(select distinct
  p.user_id
  , p.good_app
  , p.packet_date
  , a.app
  , a.is_trial
  , a.name
  , a.platform
  , a.options
from playevent p
left join app_subscription a
on (p.user_id = a.user_id
  and p.day >= '2016-01-01'
  and a.status = 'confirmed'
  and p.ok_flag = true
  and price > 5
  and a.platform in ('zvooq', 'apple', 'google'))
where p.packet_date > a.start_date
  and p.packet_date < a.expiration_date
  and ((p.good_app in ('web', 'openplay') and a.app in ('openplay', 'zvooq')) or (p.good_app = 'fonoteka' and a.app = 'fonoteka'))
) a
on (p.user_id = a.user_id and p.packet_date = a.packet_date)
left join track t
  on t.id = p.track_id
left join tcredits tc
  on tc.ztid = p.track_id
left join `ref` r
  on r.ztid = p.track_id
left join ztid_party ztp
  on ztp.ztid = t.id
where
  p.day >= '2016-01-01'
  and p.ok_flag = true
  and ( case when get_json_object(a.options, '$.payment_type_name') = 'trial' then true else a.is_trial end = false
    or case when get_json_object(a.options, '$.payment_type_name') = 'trial' then true else a.is_trial end is null)
group by
  case when p.good_app = 'fonoteka' then 'fonoteka' when a.app is null then 'ad_support' else 'premium' end 
  ,case when regexp(tc.credits, '[а-яА-Я]') then 'Russian' else "Foreign" end 
 ;


 select
  case when p.good_app = 'fonoteka' then 'fonoteka' when a.app is null then 'ad_support' else 'premium' end as usage
  , count(1) as total
  , t.title
  , t.id
from playevent p
 left join
(select distinct
  p.user_id
  , p.good_app
  , p.packet_date
  , a.app
  , a.is_trial
  , a.name
  , a.platform
  , a.options
from playevent p
left join app_subscription a
on (p.user_id = a.user_id
  and p.day >= '2016-01-01'
  and a.status = 'confirmed'
  and p.ok_flag = true
  and price > 5
  and a.platform in ('zvooq', 'apple', 'google'))
where p.packet_date > a.start_date
  and p.packet_date < a.expiration_date
  and ((p.good_app in ('web', 'openplay') and a.app in ('openplay', 'zvooq')) or (p.good_app = 'fonoteka' and a.app = 'fonoteka'))
) a
on (p.user_id = a.user_id and p.packet_date = a.packet_date)
left join track t
  on t.id = p.track_id
left join tcredits tc
  on tc.ztid = p.track_id
left join `ref` r
  on r.ztid = p.track_id
left join ztid_party ztp
  on ztp.ztid = t.id
where
  p.day >= '2016-01-01'
  and p.ok_flag = true
  and ( case when get_json_object(a.options, '$.payment_type_name') = 'trial' then true else a.is_trial end = false
    or case when get_json_object(a.options, '$.payment_type_name') = 'trial' then true else a.is_trial end is null)
group by
  case when p.good_app = 'fonoteka' then 'fonoteka' when a.app is null then 'ad_support' else 'premium' end 
  ,t.title
  ,t.id
 order by total desc limit 1000
 ;



 select 
    count (user_id)
    ,month(added)
from 
    app_subscription
where
    is_trial = false
    and (
      get_json_object(options, '$.testing') is null
    or 
      get_json_object(options, '$.testing') = false)
    and added > '2016-01-01'
    and status = 'confirmed'
    and price > 5
    and platform in ('apple', 'google', 'zvooq')
group by 
    month (added)
;
