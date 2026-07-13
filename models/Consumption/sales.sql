with
    customer as (
        select c_custkey, c_name, c_phone, c_acctbal from raw_db.public.customer
    ),
    orders AS
    (select o_custkey, o_totalprice, o_orderdate from raw_db.public.orders)
select c_name, c_phone, c_acctbal, o_custkey, o_totalprice, o_orderdate
from customer c
left join orders o on c.c_custkey = o.o_custkey
