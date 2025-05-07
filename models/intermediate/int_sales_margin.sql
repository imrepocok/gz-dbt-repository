SELECT
    s.date_date,
    p.products_id AS product_id,
    p.purchase_price,
    s.revenue,
    s.orders_id,
    s.quantity,
    (p.purchase_price * s.quantity) AS purchase_cost,
    round(s.revenue - p.purchase_price * s.quantity,2) AS margin,
    round({{ margin_percent('s.revenue','p.purchase_price * s.quantity' ) }},2) AS margin_percent

FROM {{ ref("stg_raw_product") }} p
LEFT JOIN {{ ref("stg_raw_sales") }} s
    ON p.products_id = s.products_id