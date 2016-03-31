select activated_by_user_id
from fonoteka_promocode f 
join promocode_campaign p 
on (f.promocode_campaign_id = p.id) 
where activated_by_user_id is not null 
and is_activated = true 
and is_credit_card_required = true 
union all 
select user_id
from fonoteka_multiple_promocode fm 
join fonoteka_multiple_promocode_activated_by_user am 
on fm.id  = am.promocode_id 
join promocode_campaign p2 
on (fm.promocode_campaign_id = p2.id) 
and is_credit_card_required = true



select count (*) cnt
, app.user_id
from app_subscription app
join
(select am.user_id
from fonoteka_multiple_promocode fm 
join fonoteka_multiple_promocode_activated_by_user am 
on fm.id  = am.promocode_id 
join promocode_campaign p2 
on (fm.promocode_campaign_id = p2.id) 
and is_credit_card_required = true
) promo
on app.user_id = promo.user_id
group by app.user_id
order by cnt desc
;