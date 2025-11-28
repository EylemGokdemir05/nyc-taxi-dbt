{{ config(materialized='table') }}

select
    t.*,
    pu.zone as pickup_zone,
    pu.borough as pickup_borough,
    do.zone as dropoff_zone,
    do.borough as dropoff_borough
from {{ ref('trips_unioned') }} t
left join {{ ref('stg_nyc_raw__dim_zones') }} pu
    on t.pu_location_id = pu.location_id
left join {{ ref('stg_nyc_raw__dim_zones') }} do
    on t.do_location_id = do.location_id
