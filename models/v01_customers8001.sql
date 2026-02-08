{{
    config(
        materialized='table'
    )
}}

select c_custkey,c_name,c_address,c_phone 
from dev_db.dev_schema.customer inner join dev_db.dev_schema.nation
on c_nationkey=n_nationkey
where c_nationkey=8