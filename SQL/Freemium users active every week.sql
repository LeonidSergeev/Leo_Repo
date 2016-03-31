select 
count(user_id)
from (
    select 
        user_id
        ,count (week)
    from (
            select 
                distinct p.user_id 
                ,weekofyear(packet_date) as week
            from
                playevent p
            where 
                play_duration > 15
                and day >= '2015-11-01'
                and day < '2015-12-01'
                and app = 'openplay'
                and p.user_id not in (
                    select 
                        subs.user_id
                    from 
                        app_subscription subs
                    where
                        (get_json_object(options, '$.testing') is null
                        or get_json_object(options, '$.testing') = false)
                        and expiration_date >= '2015-11-01'
                        and start_date <= '2015-12-01'
                        and status = 'confirmed'
                        and platform in ('apple', 'google', 'zvooq')
                                    ) 
         ) b
    group by 
        user_id
    having  
        count (week) >= 4
     ) c
;



select 
    count (*)
from playevent
where 
    play_duration > 15
    and day >= '2015-11-01'
    and day < '2015-12-01'
    and app = 'openplay'
    and user_id in (
            select 
            user_id
            from (
                select 
                    user_id
                    ,count (week)
                from (
                        select 
                            distinct p.user_id 
                            ,weekofyear(packet_date) as week
                        from
                            playevent p
                        where 
                            play_duration > 15
                            and day >= '2015-11-01'
                            and day < '2015-12-01'
                            and app= 'openplay'
                            and p.user_id not in (
                                select 
                                    subs.user_id
                                from 
                                    app_subscription subs
                                where
                                    (get_json_object(options, '$.testing') is null
                                    or get_json_object(options, '$.testing') = false)
                                    and expiration_date >= '2015-11-01'
                                    and start_date <= '2015-12-01'
                                    and status = 'confirmed'
                                    and platform in ('apple', 'google', 'zvooq')
                                                ) 
                     ) b
                group by 
                    user_id
                having  
                    count (week) >= 4
                 ) c
                  )
;



select 
    count(distinct p.user_id) 
from
    playevent p
where 
    play_duration > 15
    and day >= '2015-11-01'
    and day < '2015-12-01'
    and app ='openplay'
    and p.user_id not in (
                    select 
                        subs.user_id
                    from 
                        app_subscription subs
                    where
                        (get_json_object(options, '$.testing') is null
                        or get_json_object(options, '$.testing') = false)
                        and expiration_date >= '2015-11-01'
                        and start_date <= '2015-12-01'
                        and status = 'confirmed'
                        and platform in ('apple', 'google', 'zvooq')
                         )
;