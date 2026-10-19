USE ROLE USERADMIN;

CREATE ROLE IF NOT EXISTS airport_departures_dlt_role;

CREATE USER IF NOT EXISTS departure_check
    PASSWORD = ''
    DEFAULT_WAREHOUSE = dev_wh;

USE ROLE SECURITYADMIN;

GRANT ROLE airport_departures_dlt_role TO USER departure_check;

GRANT USAGE ON WAREHOUSE compute_wh TO ROLE airport_departures_dlt_role;
GRANT USAGE ON DATABASE airport_departures TO ROLE airport_departures_dlt_role ;
GRANT USAGE ON SCHEMA airport_departures.staging TO ROLE airport_departures_dlt_role;
GRANT CREATE TABLE ON SCHEMA airport_departures.staging TO ROLE airport_departures_dlt_role;

GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA airport_departures.staging TO ROLE airport_departures_dlt_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON FUTURE TABLES IN SCHEMA airport_departures.staging TO ROLE airport_departures_dlt_role;

GRANT ROLE airport_departures_dlt_role TO USER MeganLoe;