{%snapshot snapshot_test%}
{{
    config(
        target_database='DEV',
        unique_key='acct_id',
        strategy={'timestamp','check'},
        updated_at = 'UPDATED_DT',
        check_cols=['GL_RECON_BAL']
    )
}}
select * from DEV.DBT_SOURCE.SNAPSHOT_TEST
{% endsnapshot %}