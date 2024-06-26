{%- macro columns_with_preposttext(model_ref, pre_text = '', post_text = '') -%}
    

    {%- set cols = dbt_utils.get_filtered_columns_in_relation(model_ref) -%}

    
    {%- for feld in cols -%}
        {{ feld }} AS {{ pre_text }}{{ feld }}{{ post_text }}
        {%- if not loop.last -%}
        ,
        {% endif -%}

    {%- endfor -%}

{% endmacro %}


{% macro source_translated(source_name, object_name) %}
    SELECT 
    {%- set query -%}
        SELECT col_name, col_name_translated 
        FROM {{ source('admin', 'translate') }}
        WHERE tab_name = '{{ object_name }}'
    {%- endset -%}
    {%- set results = run_query(query) -%}
    {% for row in results %}
        {{ row[0] }} as {{ row[1] }} 
        {%- if not loop.last -%}
        ,
        {%- endif -%}
    {%- endfor %}
    FROM {{ source(source_name, object_name) }}
{% endmacro %}
