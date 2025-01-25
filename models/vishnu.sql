{{
    config(
        materialized='incremental',
        transient = 'false'
    )
}}
select * from DEV.DBT_SOURCE.vishnu