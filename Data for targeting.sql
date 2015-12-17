select count(distinct user_id)
from playevent
join u 
on playevent.user_id = u.zuid
where day >= '2015-11-01'
and day <= '2015-12-01'
and u.birthday is not NULL
and app != 'fonoteka'
;
