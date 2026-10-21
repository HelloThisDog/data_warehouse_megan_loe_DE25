with
    fct_departures as (select * from {{ref('fct_flights')}}),
    dim_airlines as (select * from {{ref('dim_airline')}})
select
    f.flight_unique_id,
    f.scheduled_departure_time,
    f.actual_departure_time,
    f.on_time,
    d.airline_name,
    f.departure_airport_short,
from fct_departures f
left join dim_airlines d on f.airline_icao = d.airline_id
where f.departure_airport_short = 'ARN'