select
    o_orderkey,
    o_custkey as cust_no,
    o_orderstatus,
    o_totalprice,
    o_orderdate,
    o_orderpriority,
    o_clerk,
    o_shippriority,
    o_comment
from raw_db.staging.orders
