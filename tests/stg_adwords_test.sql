SELECT distinct date_date, campaign_key, count(*)
from {{ref("stg_raw_adwords")}}
group by date_date, campaign_key
having count(*) > 1
