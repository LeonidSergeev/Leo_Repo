with
filtered_playevent as (
     select distinct
    first_day_of_month(packet_date) as month
    , user_id
    , case when good_app = 'web' then good_app else good_phone_type end as app
     from 
    playevent
     where
    ok_flag = true
--  and ((good_phone_type is null and good_app = 'web') or (good_app = 'openplay' and (good_phone_type = 'ios' or good_phone_type = 'android')))
--  and play_duration > 30
)
,
reg_date as (
      select
            min(month) as regdate
            , user_id
      from
        filtered_playevent
      group by
            user_id
      having
    min(month) >= '2014-07-01'      
)
select
    count(distinct pl.user_id) as cnt
    , regdate
    , round(datediff(month, regdate)/30) as month
    , app
from
    filtered_playevent pl
join
    reg_date rd on (pl.user_id = rd.user_id)
group by
      regdate
      , round(datediff(month, regdate)/30)
      , app
union all
select
    count(distinct pl.user_id) as cnt
    , regdate
    , round(datediff(month, regdate)/30) as month
    , 'total' as app
from
    filtered_playevent pl
join
    reg_date rd on (pl.user_id = rd.user_id)
group by
    regdate
    , round(datediff(month, regdate)/30)