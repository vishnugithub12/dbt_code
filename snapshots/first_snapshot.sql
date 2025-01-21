{% snapshot first_snapshot %}
{{config(
        target_database = 'DEV',
        taget_schema = 'snapshots',
        unique_key = 'DEPT_ID',
        strategy = 'check',
        check_cols = ['DEPTNAME','DEPT_LOCATION']
)
}}
select * from {{source('source_tables','DEPARTMENT')}}
{% endsnapshot %}