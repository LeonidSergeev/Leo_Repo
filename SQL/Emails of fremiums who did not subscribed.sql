select id_trial
, id_subs
, email_trial
, email_subs
from 
(
    select user_id as id_trial , email as email_trial
    from app_subscription as app_subscription2
    join u as u2
    on app_subscription2.user_id = u2.zuid
    where
    app_subscription2.is_trial = true
    and app_subscription2.expiration_date < '2015-10-28'
    and app_subscription2.start_date > '2015-10-19'
    and app_subscription2.platform in ('apple', 'google', 'zvooq')
    and app_subscription2.name not in ('fonoteka.trial', 'featurephone.trial')
    and u2.email is not NULL
) as trial
left join
(
    select user_id as id_subs, email as email_subs
    from app_subscription as app_subscription3
    join u  as u3
    on app_subscription3.user_id = u3.zuid
    where
    app_subscription3.is_trial = false
    and app_subscription3.start_date > '2015-10-23'
    and app_subscription3.platform in ('apple', 'google', 'zvooq')
    and app_subscription3.name not in ('fonoteka.trial', 'featurephone.trial')
    and u3.email is not NULL
) as subs
on subs.id_subs = trial.id_trial
;


select id_trial
, id_subs
, email_trial
, email_subs
from 
(
    select user_id as id_trial , email as email_trial
    from app_subscription as app_subscription2
    join u as u2
    on app_subscription2.user_id = u2.zuid
    where
    app_subscription2.is_trial = true
    and app_subscription2.expiration_date < '2015-11-17'
    and app_subscription2.start_date > '2015-11-09'
    and app_subscription2.platform in ('apple', 'google', 'zvooq')
    and app_subscription2.name not in ('fonoteka.trial', 'featurephone.trial')
    and u2.email is not NULL
) as trial
left join
(
    select user_id as id_subs, email as email_subs
    from app_subscription as app_subscription3
    join u  as u3
    on app_subscription3.user_id = u3.zuid
    where
    app_subscription3.is_trial = false
    and app_subscription3.added > '2015-11-15'
    and app_subscription3.platform in ('apple', 'google', 'zvooq')
    and app_subscription3.name not in ('fonoteka.trial', 'featurephone.trial')
    and u3.email is not NULL
    and status = 'confirmed'
) as subs
on subs.id_subs = trial.id_trial
;
