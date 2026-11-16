{% macro calculate_order_amount(quantity_column, price_column) %}

    ({{ quantity_column }} * {{ price_column }})::numeric(12,2)

{% endmacro %}