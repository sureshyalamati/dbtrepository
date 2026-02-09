{{
    config(
        materialized='ephemeral'
    )
}}
with customers as (
select
cutomer_id as customer_id,
first_name,
lastname
from {{source('s1','customers')}} where customer_id=1
)
select * from customers