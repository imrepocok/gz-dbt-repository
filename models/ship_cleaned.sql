select orders_id, shipping_fee, logCost, cast(ship_cost as FLOAT64) as ship_cost
from {{ ref('stg_raw_ship') }}
