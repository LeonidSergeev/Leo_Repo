select count(distinct email)
from u
join playevent
on u.zuid = playevent.user_id
where u.zuid NOT in
( select user_id from app_subscription
  where is_trial = false
  and (get_json_object(options, '$.testing') is null
  or get_json_object(options, '$.testing') = false)
  and status = 'confirmed'
  and price between 6 and 300
  and platform in ('apple', 'google', 'zvooq')) 
;
