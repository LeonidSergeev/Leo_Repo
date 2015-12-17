конверсия из триала в платные до 13 числа и какая стала

select count (distinct app_subscription.user_id) 
from app_subscription
join 
(
select distinct user_id as u2
from app_subscription
where 
  is_trial = false
  and (get_json_object(options, '$.testing') is null
  or get_json_object(options, '$.testing') = false)
  and added > '2015-10-06'
  and added < '2015-11-06'
  and status = 'confirmed'
  and price > 5
  and app != 'fonoteka'
  and platform in ('apple')
) subs
on app_subscription.user_id = subs.u2
where
  is_trial = true
  and (get_json_object(options, '$.testing') is null
  or get_json_object(options, '$.testing') = false)
  and added > '2015-10-06'
  and added < '2015-11-06'
  and app = 'openplay'
;


select count (distinct user_id) 
from app_subscription
where
  is_trial = true
  and (get_json_object(options, '$.testing') is null
  or get_json_object(options, '$.testing') = false)
  and added > '2015-11-07'
  and app = 'openplay'
  ;


select count (distinct app_subscription.user_id) 
from app_subscription
join 
(
select distinct user_id as u2
from app_subscription
where 
  is_trial = false
  and (get_json_object(options, '$.testing') is null
  or get_json_object(options, '$.testing') = false)
  and added > '2015-11-07'
  and status = 'confirmed'
  and price > 5
  and app != 'fonoteka'
  and platform in ('apple')
) subs
on app_subscription.user_id = subs.u2
where
  is_trial = true
  and (get_json_object(options, '$.testing') is null
  or get_json_object(options, '$.testing') = false)
  and added > '2015-11-07'
  and app = 'openplay'
;