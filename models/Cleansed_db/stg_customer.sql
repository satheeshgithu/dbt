select 
C_CUSTKEY as CUST_NO
,C_NAME
,C_ADDRESS
,C_NATIONKEY
,C_PHONE
,C_ACCTBAL
,C_MKTSEGMENT
,C_COMMENT
from raw_db.public.customer
where C_NATIONKEY <> 0

 
