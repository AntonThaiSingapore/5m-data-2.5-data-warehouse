
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='view') }}

SELECT
    trip_id,
    bike_id,
    subscriber_type,
    start_time,
    duration_minutes,
    start_station_id,
    end_station_id
FROM {{ source('austin_bikeshare', 'bikeshare_trips') }}

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
