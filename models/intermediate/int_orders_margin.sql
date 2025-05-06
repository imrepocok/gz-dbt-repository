select s.orders_id, s.date_date
        , round(sum(s.revenue),2) as revenue
        , sum(s.quantity) as quantity
        , round(sum(p.purchase_price*s.quantity),2) as purchase_cost
        , round(sum(s.revenue)-sum(p.purchase_price*s.quantity),2) as margin

from    {{ ref('product_clean') }} p
    join {{ ref('stg_raw_sales') }} s on p.products_id = s.pdt_id

where s.orders_id = 1002561

group by s.orders_id, s.date_date