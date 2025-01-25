{{
    config(
        materialized='table'
    )
}}
select * from {{ref("own_table")}}
where id =2