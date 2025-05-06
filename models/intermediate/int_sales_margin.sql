select   p.products_id, s.date_date
        ,round(sum(s.quantity*p.purchase_price),2) as purchase_cost
        ,round(sum(s.revenue)-sum(s.quantity*p.purchase_price),2) as margin

from    {{ ref('product_clean') }} p
    join {{ ref('stg_raw_sales') }} s on p.products_id = s.pdt_id

group by p.products_id, s.date_date


