select
  count(distinct user_id) as total 
  , name
  , app
from app_subscription
where
  is_trial = false
  and (get_json_object(options, '$.payment_type_name') is null
    or get_json_object(options, '$.payment_type_name') = '5slots.1month')
  and (get_json_object(options, '$.testing') is null
    or get_json_object(options, '$.testing') = false)
  and expiration_date > '2015-10-01'
  and start_date < '2015-11-01'
  and status = 'confirmed'
  and price > 5
  and app != 'fonoteka'
  and platform in ('apple', 'google', 'zvooq')
group by app, name
;


select count(distinct user_id),
month (packet_date)
from playevent
where ok_flag = true
and play_duration > 30
and day >= '2015-01-01'
and day < '2015-11-01'
and app != 'fonoteka'
group by month (packet_date)
;