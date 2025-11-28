with source as (
    select * from {{ source('nyc_raw', 'green_tripdata') }}
),

renamed as (
    select
        vendorid as vendor_id,
        lpep_pickup_datetime as pickup_datetime,
        lpep_dropoff_datetime as dropoff_datetime,
        store_and_fwd_flag,
        ratecodeid as rate_code_id,
        pulocationid as pu_location_id,
        dolocationid as do_location_id,
        passenger_count,
        trip_distance,
        fare_amount,
        extra,
        mta_tax,
        tip_amount,
        tolls_amount,
        ehail_fee,
        improvement_surcharge,
        total_amount,
        payment_type,
        trip_type,
        congestion_surcharge
    from source
)

select * from renamed
where vendorid is not null
