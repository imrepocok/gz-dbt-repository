{% macro margin_percent(revenue, purchase_cost) %}
   ( {{revenue}} - {{purchase_cost}}) / nullif({{revenue}}, 0)
{% endmacro %}
