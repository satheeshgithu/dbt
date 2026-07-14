select 
o_orderkey,
(sum(o_totalprice)/1000)::int as amt
from {{ ref('stg_order') }}
group by o_orderkey
having amt<=0
