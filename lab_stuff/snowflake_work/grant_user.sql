USE ROLE USERADMIN;

CREATE ROLE departures_dbt_role;

GRANT ROLE departures_dbt_role TO USER transformer;
GRANT ROLE departures_dbt_role TO USER MeganLoe;