{{
    config(
        materialized='table'
    )
}}

select c_custkey,c_name,c_address,c_phone 
from {{ source('src1', 'customer') }} inner join {{ source('src1', 'nation') }}
on c_nationkey=n_nationkey
where c_nationkey=8