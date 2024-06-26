{% set column_names = dbt_utils.star(
    from=ref('gold_dim_costcenter'), quote_identifiers=False )
%}

{% set cols = dbt_utils.get_filtered_columns_in_relation(ref('gold_dim_costcenter')) %}

{{ cols }}

{% for feld in cols %}
    {{ feld }} AS test_{{ feld }}
{%- if not loop.last -%}
,
{%- endif -%}
{%- endfor -%}



{% set felder = column_names.split(',') %}

{% for feld in felder %}
    {{ feld }} AS test_{{ feld }}
{%- if not loop.last -%}
,
{% endif %}
{% endfor %}


