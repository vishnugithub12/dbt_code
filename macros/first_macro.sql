{{%macro first_macro('id','amt')%}}
select id || ' ' || amt as idamt FROM DEV.DBT_SOURCE.first_macro
{{%endmacro%}}