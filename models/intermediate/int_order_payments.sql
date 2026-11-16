
with orders as (

    select *
    from {{ ref('stg_orders') }}

),

payment_calculations as (

    select
        order_id,
        customer_id,
        product_id,
        order_date,
        quantity,
        unit_price,
        payment_status,

        {{ calculate_order_amount('quantity', 'unit_price') }} as order_amount,

case
    when payment_status = 'REFUNDED' then 0
    else {{ calculate_order_amount('quantity', 'unit_price') }}
end as net_amount

    from orders

)

select *
from payment_calculations
