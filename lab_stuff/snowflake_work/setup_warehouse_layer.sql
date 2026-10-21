USE ROLE SYSADMIN;

USE DATABASE airport_departures;

CREATE SCHEMA IF NOT EXISTS warehouse;

USE ROLE securityadmin;

GRANT ROLE airport_departures_dlt_role TO ROLE departures_dbt_role;

GRANT USAGE, CREATE TABLE, CREATE VIEW ON SCHEMA airport_departures.warehouse TO ROLE departures_dbt_role;

GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA airport_departures.warehouse TO ROLE departures_dbt_role;
GRANT SELECT ON ALL VIEWS IN SCHEMA airport_departures.warehouse TO ROLE departures_dbt_role;

GRANT SELECT, INSERT, UPDATE, DELETE ON FUTURE TABLES IN SCHEMA airport_departures.warehouse TO ROLE departures_dbt_role;
GRANT SELECT ON FUTURE VIEWS IN SCHEMA airport_departures.warehouse TO ROLE departures_dbt_role;