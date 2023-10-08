select 
    ID as id,
    ORDERID as order_id,
    PAYMENTMETHOD as payment_method,
    STATUS as status,
    AMOUNT / 100 as amount,
    CREATED as created_at
from {{ source('jaffle', 'stripe_payments') }}
