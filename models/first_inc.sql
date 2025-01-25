{{
    config(
        materialized='incremental',
        transient = 'false'
    )
}}
select * from DEV.DBT_SOURCE.inc_tbl
{% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    where UPDATED_DT
 > (select max(UPDATED_DT) from {{ this }}) 
{% endif %}