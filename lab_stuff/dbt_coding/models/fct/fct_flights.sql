with flight_departures as (select * from {{ ref('src_flight')}})

select
    {{dbt_utils.generate_surrogate_key(['flight_id', 'departure_airport_short', 'scheduled_departure_time'])}} as flight_unique_id,
    actual_departure_time,
    desination_airport,
    scheduled_departure_time,
    departure_airport_short,
    airline_icao,
    CASE
        WHEN actual_departure_time IS NULL THEN NULL   -- no actual time yet (e.g. not departed / cancelled)
        WHEN TRY_TO_TIMESTAMP_NTZ(actual_departure_time)
             <= TRY_TO_TIMESTAMP_NTZ(scheduled_departure_time)
            THEN 'Yes'
        ELSE 'No'
    END AS on_time
from flight_departures