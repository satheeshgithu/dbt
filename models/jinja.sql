select 
* 
from {{ source('demo', 'inventory') }}

limit 10