with
    customer as (
        select
            c_custkey,
            c_name,
            c_address,
            c_nationkey,
            c_phone,
            c_acctbal,
            c_mktsegment,
            c_comment
        from raw_db.public.customer
        where c_nationkey <> 0
    ),
     orders as (
        select
            o_orderkey,
            o_custkey,
            o_orderstatus,
            o_totalprice,
            o_orderdate,
            o_orderpriority,
            o_clerk,
            o_shippriority,
            o_comment
        from raw_db.staging.orders
    ),
    nation as (
        select n_nationkey, n_name as nation, n_regionkey, n_comment
        from raw_db.staging.nation
    ),
    region as (

        select r_regionkey, r_name as region, r_comment from raw_db.staging.region
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
