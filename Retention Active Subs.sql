with
filtered_app_subscription as (
     select distinct
    from_unixtime(unix_timestamp(added),'yyyy-MM-01') as month
    , app_subscription.user_id
    , app_subscription.app
    , app_subscription.platform
     from 
    app_subscription
    join playevent 
    on app_subscription.user_id = playevent.user_id
     where
    is_trial = false
    and app_subscription.app != 'fonoteka'
    and app_subscription.price > 5
    and app_subscription.platform in ('apple', 'google', 'zvooq')
    and app_subscription.added <= from_unixtime(unix_timestamp(), 'yyyy-MM-dd')
)
,
sub_start as (
      select
            min(month) as first_sub
            , user_id
      from
        filtered_app_subscription
      group by
          user_id
        , platform
      having
    min(month) >= '2015-01-01'
    and max(month) <= '2015-11-01'
        
)
select
    count(distinct fas.user_id) as cnt
    , first_sub
    , round(datediff(fas.month, ss.first_sub)/30) as month
    , app
    , platform
from
    filtered_app_subscription fas
join
    sub_start ss on (ss.user_id = fas.user_id)
group by
      first_sub
      , round(datediff(fas.month, ss.first_sub)/30)
      , app
      , platform
