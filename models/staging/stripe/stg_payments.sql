with payments as (
    select
        id as payment_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status,
        -- convert to $
        amount / 100 as amount,
        created as created_at
    from {{ source('stripe','payments') }}
)

select * from payments