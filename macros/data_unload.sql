{% macro data_unload(filename,filetype) %}
    {%set copy_statement%}
    copy into @DEV.DBT_SOURCE.AWS_EXT_STAGE/{{filename}}.{{filetype}} FROM 
    (SELECT * FROM DEV.DBT_SOURCE.agents)
    overwrite= true
    {%endset%}
    {%do run_query(copy_statement)%}
{% endmacro %}