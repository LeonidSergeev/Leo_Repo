select
  count(distinct user_id) as total 
  , platform
from app_subscription
where
  is_trial = false
  and (get_json_object(options, '$.payment_type_name') is null
    or get_json_object(options, '$.payment_type_name') = '5slots.1month')
  and (get_json_object(options, '$.testing') is null
    or get_json_object(options, '$.testing') = false)
  and expiration_date > '2016-02-01'
  and start_date < '2016-03-01'
  and status = 'confirmed'
  and price > 5
  and app != 'fonoteka'
  and platform in ('apple', 'google', 'zvooq')
group by platform
;

	
select count(distinct p.user_id),
month (packet_date)
, good_app
from playevent p
where ok_flag = true
and play_duration > 30
and day >= '2016-02-01'
and day < '2016-03-01'
and app != 'fonoteka'
and p.user_id not in 
(
select
  distinct a.user_id
from app_subscription a
where
  is_trial = false
  and (get_json_object(options, '$.payment_type_name') is null
    or get_json_object(options, '$.payment_type_name') = '5slots.1month')
  and (get_json_object(options, '$.testing') is null
    or get_json_object(options, '$.testing') = false)
  and expiration_date > '2016-02-01'
  and start_date < '2016-03-01'
  and status = 'confirmed'
  and price > 5
  and app != 'fonoteka'
  and platform in ('apple', 'google', 'zvooq')
)
group by month (packet_date), good_app
;