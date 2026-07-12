{{
    config(
        materialized='table'
    )
}}

select *
from raw_db.public.customer
where c_mktsegment = 'BUILDING'