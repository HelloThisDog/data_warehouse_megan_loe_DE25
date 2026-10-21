USE ROLE useradmin;

CREATE ROLE  flight_reporter_role;

USE ROLE securityadmin;

GRANT USAGE ON WAREHOUSE compute_wh TO ROLE flight_reporter_role;

GRANT USAGE ON DATABASE airport_departures TO ROLE flight_reporter_role;

GRANT USAGE ON SCHEMA airport_departures.marts TO ROLE flight_reporter_role;

GRANT SELECT ON ALL TABLES IN SCHEMA airport_departures.marts TO ROLE flight_reporter_role;

GRANT SELECT ON ALL VIEWS IN SCHEMA airport_departures.marts TO ROLE flight_reporter_role;

GRANT SELECT ON FUTURE TABLES IN SCHEMA airport_departures.marts TO ROLE flight_reporter_role;

GRANT SELECT ON FUTURE VIEWS IN SCHEMA airport_departures.marts TO ROLE flight_reporter_role;

GRANT ROLE flight_reporter_role TO USER reporter;

GRANT ROLE flight_reporter_role TO USER MeganLoe;