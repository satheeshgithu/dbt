select 
* 
from {{ source('demo', 'customer') }}

limit 10