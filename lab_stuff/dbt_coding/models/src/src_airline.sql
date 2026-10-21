with stg_airline as (select * from {{source('airport_departures', 'stg_airline')}})

select
    icao as airline_id,
    ariline as airline_name,
    country_region as airline_location,
from stg_airline