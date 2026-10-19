USE ROLE USERADMIN;

CREATE ROLE IF NOT EXISTS airport_departures_dlt_role;

CREATE USER IF NOT EXISTS departure_check
    PASSWORD = ''
    DEFAULT_WAREHOUSE = dev_wh;

