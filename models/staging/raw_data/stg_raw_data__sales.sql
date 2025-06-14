with 

source as (

    select * from {{ source('raw_data', 'sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        pdt_id as product_id,
        revenue,
        quantity

    from source

)

select * from renamed
