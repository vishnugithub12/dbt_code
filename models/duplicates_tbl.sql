{{
    config(
        materialized='table'
    )
}}
select distinct * from {{source('source_tables','dup_table_id')}}