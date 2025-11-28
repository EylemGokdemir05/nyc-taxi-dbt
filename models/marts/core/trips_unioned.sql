{{ config(materialized='table') }}

with green as (
    select
        cast(vendor_id as int64) as vendor_id,
        pickup_datetime,
        dropoff_datetime,
        cast(store_and_fwd_flag as string) as store_and_fwd_flag,
        cast(rate_code_id as int64) as rate_code_id,
        cast(pu_location_id as int64) as pu_location_id,
        cast(do_location_id as int64) as do_location_id,
        cast(passenger_count as int64) as passenger_count,
        cast(trip_distance as float64) as trip_distance,
        cast(fare_amount as float64) as fare_amount,
        cast(extra as float64) as extra,
        cast(mta_tax as float64) as mta_tax,
        cast(tip_amount as float64) as tip_amount,
        cast(tolls_amount as float64) as tolls_amount,
        cast(ehail_fee as float64) as ehail_fee,
        cast(improvement_surcharge as float64) as improvement_surcharge,
        cast(total_amount as float64) as total_amount,
        cast(payment_type as int64) as payment_type,
        cast(trip_type as int64) as trip_type,
        'green' as service_type
    from {{ ref('stg_nyc_raw__green_tripdata') }}
),

yellow as (
    select
        cast(vendor_id as int64) as vendor_id,
        pickup_datetime,
        dropoff_datetime,
        cast(store_and_fwd_flag as string) as store_and_fwd_flag,
        cast(rate_code_id as int64) as rate_code_id,
        cast(pu_location_id as int64) as pu_location_id,
        cast(do_location_id as int64) as do_location_id,
        cast(passenger_count as int64) as passenger_count,
        cast(trip_distance as float64) as trip_distance,
        cast(fare_amount as float64) as fare_amount,
        cast(extra as float64) as extra,
        cast(mta_tax as float64) as mta_tax,
        cast(tip_amount as float64) as tip_amount,
        cast(tolls_amount as float64) as tolls_amount,
        null as ehail_fee,
        cast(improvement_surcharge as float64) as improvement_surcharge,
        cast(total_amount as float64) as total_amount,
        cast(payment_type as int64) as payment_type,
        null as trip_type,
        'yellow' as service_type
    from {{ ref('stg_nyc_raw__yellow_tripdata') }}
)

select * from green
union all
select * from yellow
