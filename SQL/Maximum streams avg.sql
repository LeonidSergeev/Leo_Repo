select avg(total)
,platform
,date2
from (
select count(*) as total
, case when a.user_id is null then 'stream' else 'subscription' end as platform
, month (p.packet_date) as date2
, p.user_id
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
    where day >= '2015-12-01'
      and day < '2016-01-01') p
  join app_subscription a
    on (p.user_id = a.user_id
      and a.status = 'confirmed'
      and is_trial = false
      )
  where p.packet_date > a.start_date
    and p.packet_date < a.expiration_date) a
  on (p.user_id = a.user_id and p.packet_date = a.packet_date) 
where
  p.day >= '2015-12-01'
  and p.day < '2016-01-01'
group by 
  case when a.user_id is null then 'stream' else 'subscription' end, month (p.packet_date), p.user_id
) g
group by platform, date2
;