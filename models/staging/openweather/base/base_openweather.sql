with source as (

    select * from {{ source('bigquery', 'current') }}

),

base as (

    select
        dt,
        uvi,
        rain,
        temp,
        clouds,
        sunset,
        sunrise,
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