with source as (
    select * from {{ source('nyc_raw','dim_zones') }}
)

select
    locationid as location_id,
    zone,
    borough
from source
