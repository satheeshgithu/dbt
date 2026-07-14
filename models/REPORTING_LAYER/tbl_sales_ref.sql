with
    customer as ( select * from {{ ref('stg_customer') }}),
     orders as ( select * from 
{{ ref('stg_order') }}
    ),
    nation as ( select * from 
   {{ ref('stg_nation') }}
    ),
    region as ( select * from 
{{ ref('stg_region') }}
    )

select
    c_custkey,
    c_name,
    c_address,
    c_nationkey,
    c_phone,
    c_acctbal,
    c_mktsegment,
    c_comment,
    o_orderkey,
    o_custkey,
    o_orderstatus,
    o_totalprice,
    o_orderdate,
    o_orderpriority,
    o_clerk,
    o_shippriority,
    o_comment,
    nation,
    region
from customer c
left join orders o on c.c_custkey = o.o_custkey
left join nation n on c.c_nationkey = n.n_nationkey
left join region r on n.n_regionkey = r.r_regionkey
