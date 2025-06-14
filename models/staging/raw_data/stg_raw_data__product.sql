with 

source as (

    select * from {{ source('raw_data', 'product') }}

),

renamed as (

    select
        products_id,
        CAST(purchase_price AS FLOAT64)

    from source

)

select * from renamed
