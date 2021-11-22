{%- macro cents_to_dollars(amount, decimal_places=2) -%}
    round( 1.0 * {{ amount }} / 100, {{ decimal_places }} )
{%- endmacro -%}