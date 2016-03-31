select avg(total)/3600
, date1
from (
    select 
    sum(play_duration) as total
    , playevent.user_id
    , month(packet_date) as date1
    from playevent 
    where playevent.day >= '2015-01-01'
      and playevent.day <= '2015-12-01'
      and playevent.user_id not in (
        select
          user_id
        from 
          app_subscription
        where is_trial = false
        and (get_json_object(options, '$.payment_type_name') is null
         or get_json_object(options, '$.payment_type_name') = '5slots.1month')
        and (get_json_object(options, '$.testing') is null
          or get_json_object(options, '$.testing') = false)
        and expiration_date >= '2015-01-01'
        and start_date <= '2015-12-01'
        and status = 'confirmed'
        and price > 5
        and platform in ('apple', 'google', 'zvooq')
    ) 
        group by playevent.user_id, month(packet_date)
) as a
group by date1
;

select avg(total)/3600
, date1
from (
    select 
    sum(play_duration) as total
    , playevent.user_id
    , month(packet_date) as date1
    from playevent 
    where playevent.day >= '2015-01-01'
      and playevent.day <= '2015-12-01'
      and playevent.user_id in (
        select
          user_id
        from 
          app_subscription
        where is_trial = false
        and (get_json_object(options, '$.payment_type_name') is null
         or get_json_object(options, '$.payment_type_name') = '5slots.1month')
        and (get_json_object(options, '$.testing') is null
          or get_json_object(options, '$.testing') = false)
        and expiration_date >= '2015-10-01'
        and start_date <= '2015-12-01'
        and status = 'confirmed'
        and price > 5
        and platform in ('apple', 'google', 'zvooq')
    ) 
        group by playevent.user_id, month(packet_date)
) as a
group by date1
;