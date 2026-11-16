{% snapshot customers_snapshot %}

{{
    config(
        target_schema='snapshots',
        unique_key='customer_id',
        strategy='check',
        check_cols=['email']
    )
}}

select *
from {{ source('raw', 'customers') }}

{% endsnapshot %}