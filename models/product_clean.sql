select
    products_id,
    cast(purchse_price as FLOAT64) as purchase_price
from {{ ref('stg_raw_product') }}