select count(distinct user_id),
app
from playevent
where ok_flag = true
and day >= '2014-10-01'
and day < '2014-11-01'
group by app
;