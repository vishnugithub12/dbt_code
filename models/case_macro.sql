{{
    config(
        materialized='table',
        transient = 'false',
        alias = 'gender'
    )
}}
select name, {{m_gender('gender')}} from DEV.DBT_SOURCE.GENDER