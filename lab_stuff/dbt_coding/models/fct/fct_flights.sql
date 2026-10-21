with flight_departures as (select * from {{ ref('src_flight')}})

select
    {{dbt_utils.generate_surrogate_key(['flight_id', 'departure_airport_short', 'scheduled_departure_time'])}} as flight_unique_id,
    actual_departure_time,
    desination_airport,
    scheduled_departure_time,
    departure_airport_short,
    airline_icao,
from flight_departures