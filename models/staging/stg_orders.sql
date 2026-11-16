

with source_data as (

    select *
    from {{ source('raw', 'orders') }}

),

cleaned as (

    select
        cast(order_id as integer) as order_id,
        cast(customer_id as integer) as customer_id,
        cast(product_id as integer) as product_id,
        cast(order_date as date) as order_date,
        cast(quantity as integer) as quantity,
        cast(unit_price as decimal(12, 2)) as unit_price,
        upper(trim(payment_status)) as payment_status

    from source_data

)

select *
from cleaned
