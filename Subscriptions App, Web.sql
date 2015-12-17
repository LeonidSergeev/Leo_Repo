select
  count(user_id) as total 
  , name
  , app
  , platform
  , price
from app_subscription
where
  added >= '2015-01-01'
  and added < '2015-04-01'
  and platform not in ('ulmart', 'ruru')
  and is_trial = false
  and status = 'confirmed'
group by app, platform, price, name
;