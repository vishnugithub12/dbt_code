{% macro m_gender(gender) %}
    (case when {{gender}} = 'M' then 'MALE' else 'FEMALE' end) as FF
{% endmacro %}