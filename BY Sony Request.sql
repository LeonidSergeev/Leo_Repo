select count(distinct user_id),
month (packet_date), app
from playevent
where ok_flag = true
and play_duration > 30
and day >= '2015-01-01'
and day < '2015-11-01'
and country = 'BY'
group by month (packet_date), app
;

select
  count(app_subscription.user_id) as total, "%"
  , app_subscription.name, "%"
  , app_subscription.app, "%"
  , app_subscription.price
from app_subscription
where
  is_trial = false
  and (get_json_object(options, '$.testing') is null
    or get_json_object(options, '$.testing') = false)
  and app_subscription.added >= '2015-10-01'
  and app_subscription.added < '2015-11-01'
  and app_subscription.status = 'confirmed'
  and app_subscription.price > 5
  and app_subscription.platform in ('apple', 'google', 'zvooq')
  and app_subscription.user_id in 
(
select user_id as u2 
from playevent
where country = "BY"
)
group by app_subscription.app, app_subscription.price, app_subscription.name
;