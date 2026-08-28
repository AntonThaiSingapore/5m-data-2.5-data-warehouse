
-- Use the `ref` function to select from other models

{{ config(materialized='table') }}

SELECT DISTINCT
    station_id,
    name AS station_name,
    status,
    address,
    city,
    property_type
FROM {{ source('austin_bikeshare', 'bikeshare_stations') }}
