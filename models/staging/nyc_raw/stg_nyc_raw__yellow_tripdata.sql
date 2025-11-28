with source as (
    select * from {{ source('nyc_raw', 'yellow_tripdata') }}
),

renamed as (
    select
        vendorid as vendor_id,
        tpep_pickup_datetime as pickup_datetime,
        tpep_dropoff_datetime as dropoff_datetime,
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
        null as ehail_fee,
        improvement_surcharge,
        total_amount,
        payment_type,
        null as trip_type,
        null as congestion_surcharge
    from source
)

select * from renamed
where vendorid is not null
