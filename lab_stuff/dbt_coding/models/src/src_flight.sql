with stg_flight as (select * from {{source('airport_departures', 'stg_flight')}})

select
    flight_id,
    departure_time_scheduled_utc as scheduled_departure_time,
    departure_time_actual_utc as actual_departure_time,
    arrival_airport_swedish as desination_airport,
    airport_IATA as departure_airport_short,
    airline_operator_icao as airline_icao,
from stg_flight