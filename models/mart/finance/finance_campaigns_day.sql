WITH FD as (select * from {{ref("finance_days")}}),
CD as (select * from {{ref("int_campaigns_day")}})

select fd.date_date
        ,(fd.operational_margin-cd.ads_cost) as ads_margin
        ,fd.average_basket
        ,fd.operational_margin
        ,cd.ads_cost
        ,cd.impression as ads_impression
        ,cd.click as ads_clicks
        ,fd.quantity
        ,fd.revenue
        ,fd.purchase_cost
        ,fd.margin
        ,fd.shipping_fee
        ,fd.logcost
        ,fd.ship_cost
from fd inner join cd USING(date_date)
order by 1 desc