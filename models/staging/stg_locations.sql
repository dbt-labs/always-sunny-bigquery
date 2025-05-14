with
    stores as (select * from {{ source('ecom', 'raw_stores') }})

select
    id                                          as location_id,
    name                                        as location_name,
    tax_rate,
    {{ dbt.date_trunc('day', 'opened_at') }}    as opened_date
from stores
