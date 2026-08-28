{{ config(materialized='table') }}

SELECT DISTINCT
    station_id,
    name AS station_name,
    status,
    address,
    property_type
FROM {{ source('austin_bikeshare', 'bikeshare_stations') }}
