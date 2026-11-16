{{ config(
    materialized='incremental',
    unique_key='order_id'
) }}

select
    p.order_id,
    p.customer_id,
    c.customer_name,
    c.email,
    c.city,
    p.product_id,
    p.order_date,
    p.quantity,
    p.unit_price,
    p.order_amount,
    p.payment_status,
    p.net_amount

from {{ ref('int_order_payments') }} as p

left join {{ ref('stg_customers') }} as c
    on p.customer_id = c.customer_id

{% if is_incremental() %}
where not exists (
    select 1
    from {{ this }} as existing
    where existing.order_id = p.order_id
)
{% endif %}