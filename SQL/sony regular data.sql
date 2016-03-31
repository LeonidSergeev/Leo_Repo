select 
    count (distinct user_id)
    ,platform
from 
    app_subscription
where
    is_trial = false
    and added > '2015-01-01'
    and added < '2016-03-01'
group by 
platform
;


select count(distinct p.user_id)
from playevent p
left join app_subscription a
on p.user_id = a.user_id
where day >= '2015-01-01'
and day < '2016-03-01'
and play_duration >= 30
and p.app != "fonoteka"
and (a.name is null or p.packet_date > a.expiration_date)
;

