{{
    config(
        materialized='table',
        transient=false
    )
}}
select * from dev_db.dev_schema.customer where C_NATIONKEY=8