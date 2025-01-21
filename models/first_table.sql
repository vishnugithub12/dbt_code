{{
    config(materialized='table',
            transient='false')
}}
select DEPT_ID,DEPTNAME,DEPT_LOCATION from {{source('source_tables','DEPARTMENT')}}
where DEPT_ID = '10'
