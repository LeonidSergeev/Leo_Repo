#Income
select 
    count (user_id)
    ,avg(price)
    ,month(added)
    ,year(added)
    ,app
from 
    app_subscription
where
    is_trial = false
    and (
      get_json_object(options, '$.testing') is null
    or 
      get_json_object(options, '$.testing') = false)
    and added > '2015-06-01'
    and added < '2016-03-01'
    and status = 'confirmed'
    and price > 5
    and platform in ('apple', 'google', 'zvooq')
group by 
    month (added)
    , app
    , year(added)
;

#MAU
select count(distinct user_id),
month (packet_date),
year (packet_date),
good_app
from playevent
where day >= '2015-01-01'
and day < '2016-03-01'
and app != 'fonoteka'
group by month (packet_date), year (packet_date), good_app
;

#Sony Pro Rata
select
  case when playback_app = 'fonoteka' then 'fonoteka' when subscription_app is null then 'ad_support' else 'premium' end as usage
  , sum(case when zchan = 'sony' then cnt else 0 end) as sony
  , sum(cnt) as total
  , month (day)
from sony_playback_daily
where
  day >= '2015-01-01'
  and day < '2015-12-01'
  and (subscription_is_trial = false or subscription_is_trial is null)
group by
  case when playback_app = 'fonoteka' then 'fonoteka' when subscription_app is null then 'ad_support' else 'premium' end
  , month(day)
  ;

#streams 30+
select count(*) as total
, case when a.user_id is null then 'stream' else 'subscription' end
, month (p.packet_date)
, year(p.packet_date)
from playevent p
left join (
  select distinct
    p.user_id
    , packet_date
  from (
    select distinct
      user_id
      , packet_date
    from playevent
    where day >= '2015-01-01'
      and day < '2016-03-01'
      and ok_flag = true
      and play_duration > 30) p
  join app_subscription a
    on (p.user_id = a.user_id
      and a.status = 'confirmed'
      and platform in ('apple', 'google', 'zvooq')
      and is_trial = false
      and price > 5
      )
  where p.packet_date > a.start_date
    and p.packet_date < a.expiration_date) a
  on (p.user_id = a.user_id and p.packet_date = a.packet_date) 
where
  p.day >= '2015-01-01'
  and p.day < '2016-03-01'
  and p.ok_flag = true
  and p.play_duration > 30
  and (p.good_app = 'openplay'
    or p.good_app = 'web')
group by 
  case when a.user_id is null then 'stream' else 'subscription' end, month (p.packet_date), year(p.packet_date)
;


#streams 15+
select count(*) as total
, case when a.user_id is null then 'stream' else 'subscription' end
, month (p.packet_date)
, year(p.packet_date)
from playevent p
left join (
  select distinct
    p.user_id
    , packet_date
  from (
    select distinct
      user_id
      , packet_date
    from playevent
    where day >= '2015-01-01'
      and day < '2016-03-01'
      and ok_flag = true
      and play_duration > 15) p
  join app_subscription a
    on (p.user_id = a.user_id
      and a.status = 'confirmed'
      and platform in ('apple', 'google', 'zvooq')
      and is_trial = false
      and price > 5
      )
  where p.packet_date > a.start_date
    and p.packet_date < a.expiration_date) a
  on (p.user_id = a.user_id and p.packet_date = a.packet_date) 
where
  p.day >= '2015-01-01'
  and p.day < '2016-03-01'
  and p.ok_flag = true
  and p.play_duration > 15
  and (p.good_app = 'openplay'
    or p.good_app = 'web')
group by 
  case when a.user_id is null then 'stream' else 'subscription' end, month (p.packet_date), year(p.packet_date)
;