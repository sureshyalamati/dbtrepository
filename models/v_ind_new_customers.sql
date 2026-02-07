{{
    config(
        materialized='table'
    )
}}
select * from dev_db.dev_schema.customer where C_NATIONKEY=8