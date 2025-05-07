WITH cdm as (select * from {{ref("finance_campaigns_day")}})

select date_trunc(cdm.date_date, MONTH) as datemonth
    ,sum(cdm.ads_margin) as ads_margin
    ,round(sum(cdm.average_basket),1) as average_basket
    ,sum(cdm.operational_margin) as operational_margin
    ,sum(cdm.ads_cost) as ads_cost
    ,sum(cdm.ads_impression) as ads_impression
    ,sum(cdm.ads_clicks) as ads_clicks
    ,sum(cdm.quantity) as quantity
    ,sum(cdm.revenue) as revenue
    ,sum(cdm.purchase_cost) as purchase_cost
    ,sum(cdm.margin) as margin
    ,sum(cdm.shipping_fee) as shipping_fee
    ,sum(cdm.logcost) as logcost
    ,sum(cdm.ship_cost) as ship_cost

from CDM
group by date_trunc(cdm.date_date, MONTH)
order by 1 desc