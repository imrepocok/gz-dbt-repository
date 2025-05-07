with source as 
    (select * from {{ref("int_campaigns")}}) 

select date_date, sum(ads_cost) as ads_cost, sum(impression) as impression, sum(click) as click
from source
group by date_date
order by 1 desc

