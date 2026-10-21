with dim_airline as (select * from {{ref('src_airline')}})

select
    *
from dim_airline