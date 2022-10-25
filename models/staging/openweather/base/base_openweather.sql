with source as (

    select * from {{ source('bigquery', 'current') }}

),

base as (

    select
        TIMESTAMP_SECONDS(CAST(dt AS INT)) AS timestamp,
        uvi,
        rain,
        temp,
        clouds,
        TIMESTAMP_SECONDS(CAST(sunrise AS INT)) AS sunrise_timestamp,
        TIMESTAMP_SECONDS(CAST(sunset AS INT)) AS sunset_timestamp,
        weather,
        humidity,
        pressure,
        wind_deg,
        dew_point,
        feels_like,
        visibility,
        wind_speed,

    from source

)

select * from base