{{
    config(
        materialized='table',
        transient='flase'
    )
}}
select {{source('source_tables','AGENTS')}}.AGENT_CODE AS A_CODE,{{source('source_tables','AGENTS')}}.AGENT_NAME AS ANAME,{{source('source_tables','ORDERS')}}.AGENT_CODE AS OCODE,{{source('source_tables','ORDERS')}}.ORD_NUM AS ONUMBER,
{{source('source_tables','ORDERS')}}.ORD_AMOUNT AS AMOUNT FROM {{source('source_tables','AGENTS')}} INNER JOIN {{source('source_tables','ORDERS')}}
ON {{source('source_tables','AGENTS')}}.AGENT_CODE = {{source('source_tables','ORDERS')}}.AGENT_CODE